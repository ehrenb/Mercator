.class public Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;
.super Lcm/aptoide/accountmanager/ws/v3accountManager;
.source "ChangeUserSettingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/accountmanager/ws/v3accountManager",
        "<",
        "Lcm/aptoide/accountmanager/ws/responses/ChangeUserSettingsResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final INACTIVE:Ljava/lang/String; = "inactive"


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private matureSwitch:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->list:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public static of(Z)Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->setMatureSwitch(Z)V

    .line 32
    return-object v0
.end method

.method private setupParameters()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->list:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matureswitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->matureSwitch:Z

    if-eqz v0, :cond_0

    const-string v0, "active"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->list:Ljava/util/ArrayList;

    return-object v0

    .line 52
    :cond_0
    const-string v0, "inactive"

    goto :goto_0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->getList()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->isMatureSwitch()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->isMatureSwitch()Z

    move-result v0

    if-eq v3, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getMap()Lcm/aptoide/accountmanager/ws/BaseBody;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;->getMap()Lcm/aptoide/accountmanager/ws/BaseBody;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 15
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->getList()Ljava/util/ArrayList;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->isMatureSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4f

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    goto :goto_1
.end method

.method public isMatureSwitch()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->matureSwitch:Z

    return v0
.end method

.method protected loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/ChangeUserSettingsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 39
    const-string v1, "mode"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-direct {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->setupParameters()Ljava/util/ArrayList;

    move-result-object v1

    .line 41
    const-string v2, "settings"

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    invoke-interface {p1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->changeUserSettings(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic observe(Z)Lrx/d;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public setMatureSwitch(Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->matureSwitch:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeUserSettingsRequest(list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", matureSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->isMatureSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
