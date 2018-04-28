# Object与JSON字符串之间的相互转换

## 把对象JSON字符串化

    function toJson(obj, pretty) {
      if (isUndefined(obj)) return undefined;
      if (!isNumber(pretty)) {
        pretty = pretty ? 2 : null;
      }
      return JSON.stringify(obj, toJsonReplacer, pretty);
    }

## 把JSON字符串转换成对象

    function fromJson(json) {
      return isString(json)
          ? JSON.parse(json)
          : json;
    }

## 亮点： 充分的展示了**脚本弱类型语言**的优势
