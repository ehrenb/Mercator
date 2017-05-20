.class public Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
.super Ljava/lang/Object;
.source "GetStoreWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetStoreWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WSWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;,
        Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
    }
.end annotation


# static fields
.field public static final ADS_TYPE:Ljava/lang/String; = "ADS"

.field public static final APPS_GROUP_TYPE:Ljava/lang/String; = "APPS_GROUP"

.field public static final CATEGORIES_TYPE:Ljava/lang/String; = "DISPLAYS"

.field public static final COMMENTS_TYPE:Ljava/lang/String; = "COMMENTS"

.field public static final REVIEWS_TYPE:Ljava/lang/String; = "REVIEWS"

.field public static final STORE_GROUP:Ljava/lang/String; = "STORES_GROUP"

.field public static final TIMELINE_TYPE:Ljava/lang/String; = "TIMELINE"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;",
            ">;"
        }
    .end annotation
.end field

.field private data:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcm/aptoide/pt/model/v7/Type;

.field private view:Ljava/lang/String;

.field private viewObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_c
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getView()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getView()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_e

    if-eqz v3, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_f
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_11

    if-eqz v3, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getActions()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_14

    if-eqz v3, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v3

    if-nez v2, :cond_16

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->data:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcm/aptoide/pt/model/v7/Type;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->type:Lcm/aptoide/pt/model/v7/Type;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->view:Ljava/lang/String;

    return-object v0
.end method

.method public getViewObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->viewObject:Ljava/lang/Object;

    return-object v0
.end method

.method public hasActions()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->actions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->actions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 19
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTitle()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getView()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getActions()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public setActions(Ljava/util/List;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;",
            ">;)",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->actions:Ljava/util/List;

    return-object p0
.end method

.method public setData(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->data:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lcm/aptoide/pt/model/v7/Type;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->type:Lcm/aptoide/pt/model/v7/Type;

    return-object p0
.end method

.method public setView(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->view:Ljava/lang/String;

    return-object p0
.end method

.method public setViewObject(Ljava/lang/Object;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->viewObject:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetStoreWidgets.WSWidget(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
