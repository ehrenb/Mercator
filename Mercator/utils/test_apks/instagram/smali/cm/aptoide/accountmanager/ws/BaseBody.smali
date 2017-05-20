.class public Lcm/aptoide/accountmanager/ws/BaseBody;
.super Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
.source "BaseBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    return-void
.end method


# virtual methods
.method public setAccess_token(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    const-string v0, "access_token"

    invoke-virtual {p0, v0, p1}, Lcm/aptoide/accountmanager/ws/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
