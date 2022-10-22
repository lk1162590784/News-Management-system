package text;

import domain.TreeItem;
import net.sf.json.JSONObject;

import java.util.Arrays;
import java.util.List;

public class TreeTest {
    public static void main(String[] args) {

        List<TreeItem> treeItemList = Arrays.asList(
                new TreeItem("1", "0", "中国"),
                new TreeItem("10", "1", "河北"),
                new TreeItem("100", "10", "北京"),
                new TreeItem("110", "10", "天津"),
                new TreeItem("20", "1", "河南"),
                new TreeItem("200", "20", "郑州"),
                new TreeItem("210", "20", "洛阳"),
                new TreeItem("220", "20", "许昌"),
                new TreeItem("221", "220", "禹州")
        );

        TreeItem treeItem = TreeUtil.getInstance().enquireTree(treeItemList);

       // System.out.println(JSONObject.toJSONString(treeItem));

    }


}
