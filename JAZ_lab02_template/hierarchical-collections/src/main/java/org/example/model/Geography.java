package org.example.model;

import org.example.model.abstraction.IHaveHierarchicalStructure;

public class Geography implements IHaveHierarchicalStructure<Geography> {
    int id;
    String name;
    String type;
    String code;
    Integer parentId;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public String getCode() {
        return code;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setParentId(Integer perentId) {
        this.parentId = perentId;
    }
}
