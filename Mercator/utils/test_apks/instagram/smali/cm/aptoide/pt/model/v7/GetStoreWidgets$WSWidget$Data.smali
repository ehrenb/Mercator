.class public Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
.super Ljava/lang/Object;
.source "GetStoreWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    }
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Ljava/lang/String;

.field private layout:Lcm/aptoide/pt/model/v7/Layout;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getIcon()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getMessage()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getCategories()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_d

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lcm/aptoide/pt/model/v7/Layout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->layout:Lcm/aptoide/pt/model/v7/Layout;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 46
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getIcon()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getMessage()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getCategories()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    :goto_3
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

    move-result v1

    goto :goto_3
.end method

.method public setCategories(Ljava/util/List;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;",
            ">;)",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->categories:Ljava/util/List;

    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public setLayout(Lcm/aptoide/pt/model/v7/Layout;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->layout:Lcm/aptoide/pt/model/v7/Layout;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->message:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetStoreWidgets.WSWidget.Data(layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getCategories()Ljava/util/List;

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
