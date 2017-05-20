.class public Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;
.super Ljava/lang/Object;
.source "GenericResponseV2.java"


# instance fields
.field errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v2/ErrorResponse;",
            ">;"
        }
    .end annotation
.end field

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v2/ErrorResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->status:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->status:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
