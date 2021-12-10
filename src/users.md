## ユーザ情報取得 [/v1/groups/{groupId}/users{?userId,mailAddress}]

### ユーザ情報取得API [GET]

#### 処理概要

* 指定した会員の情報を返す。
* userIdかmailAddressいずれかは必須。どちらも指定がない場合、BadRequestを返す。
* userIdとmailAddressがどちらも指定されている場合、userIdの情報を利用し、mailAddressは利用しない。

+ Parameters

    + groupId: 11440002 (number, required) - ユーザが所属するグループID
    + userId: 300 (number, optional) - ユーザID
    + mailAddress: some@example.com (string, optional) - ユーザのメールアドレス

+ Response 200 (application/json)

    + Attributes
        + user (required)
            + name: wada (string, required)
            + age: 18 (number, required)
            + type: 0 (enum, required) - ユーザ種別(0:無料ユーザ, 1:有料ユーザ)
                + 0 (number)
                + 1 (number)
            + profile (object, required)
            + registered: `2015-06-11T08:40:51Z` (string, required)
            + favorites (array)
                + `https://dev.classmethod.jp/` (string)
        + messageHistory (array)
            + (object)
                + id: 22345 (number, required)
                + title: 今日の献立 (string, required)