package uitils

import (
	"crypto/md5"
	"crypto/sha1"
	"encoding/json"
	"fmt"
	"github.com/satori/go.uuid"
	"god/server/entity"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"strings"
)

func GetCurrentDirectory() string {
	dir, err := filepath.Abs(filepath.Dir(os.Args[0]))
	if err != nil {
		panic("run dir error")
	}
	return strings.Replace(dir, "\\", "/", -1)
}

func Output(w http.ResponseWriter, message string, code int, data interface{}) {
	msg := &entity.Message{Code:code, Message:message, Data:data}
	if str, err := json.Marshal(msg); err == nil {
		io.WriteString(w, string(str))
	}
}

func CheckErr(err error){
	if err != nil {
		panic(err)
	}
}

func Md5(str string) string {
	markHas := md5.Sum([]byte(str))
	markStr := fmt.Sprintf("%x", markHas)
	return markStr
}

func Sha1(str string) string {
	h := sha1.New()
	h.Write([]byte(str))
	l := fmt.Sprintf("%x", h.Sum(nil))
	return l
}

/**
判断post类型
 */
func IsMultipart(s string) bool {
	isMultipart := false
	if strings.Contains(s, "multipart/form-data") == true {
		isMultipart = true
	} else {
		isMultipart = false
	}
	return isMultipart
}

//调用os.MkdirAll递归创建文件夹
func CreateDir(filePath string)  error  {
	if !IsFileExist(filePath) {
		err := os.MkdirAll(filePath, os.ModePerm)
		return err
	}
	return nil
}

// 判断所给路径文件/文件夹是否存在(返回true是存在)
func IsFileExist(path string) bool {
	_, err := os.Stat(path)    //os.Stat获取文件信息
	if err != nil {
		if os.IsExist(err) {
			return true
		}
		return false
	}
	return true
}

func GetUuid(userId int) string {
	uuid2 := uuid.Must(uuid.NewV4(), nil)
	var uuid3 string
	if userId == 0 {
		strings.Replace(uuid2.String(), "-", "", -1)
	} else {
		uuid3 = fmt.Sprintf("%v%v%v", userId, "y", strings.Replace(uuid2.String(), "-", "", -1))
	}
	return uuid3
}

func GetMessageId() string {
	uuid2 := uuid.Must(uuid.NewV4(), nil)
	return strings.Replace(uuid2.String(), "-", "", -1)
}