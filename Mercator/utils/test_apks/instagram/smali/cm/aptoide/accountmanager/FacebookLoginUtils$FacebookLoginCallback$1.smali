.class Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$1;
.super Ljava/lang/Object;
.source "FacebookLoginUtils.java"

# interfaces
.implements Lcom/facebook/GraphRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;->onSuccess(Lcom/facebook/login/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$1;->this$0:Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;

    iput-object p2, p0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/k;)V
    .locals 4

    .prologue
    .line 125
    const-string v0, "LoginActivity"

    invoke-virtual {p2}, Lcom/facebook/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcm/aptoide/accountmanager/FacebookLoginUtils;->getFacebookData(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 128
    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    sget-object v1, Lcm/aptoide/accountmanager/ws/LoginMode;->FACEBOOK:Lcm/aptoide/accountmanager/ws/LoginMode;

    iget-object v2, p0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$1;->val$token:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcm/aptoide/accountmanager/AptoideAccountManager;->loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 128
    :cond_0
    const-string v1, "idFacebook"

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
