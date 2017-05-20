.class Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;
.super Ljava/lang/Object;
.source "FacebookLoginUtils.java"

# interfaces
.implements Lcom/facebook/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/FacebookLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FacebookLoginCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/g",
        "<",
        "Lcom/facebook/login/g;",
        ">;"
    }
.end annotation


# instance fields
.field mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method

.method private askForMailAgain()V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 186
    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x0

    sget v2, Lcm/aptoide/accountmanager/R$string;->facebook_email_permission_regected_message:I

    sget v3, Lcm/aptoide/accountmanager/R$string;->facebook_grant_permission_button:I

    const/high16 v4, 0x1040000

    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkCancelMessage(Landroid/content/Context;Ljava/lang/String;III)Lrx/d;

    move-result-object v1

    invoke-static {v0}, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$$Lambda$1;->lambdaFactory$(Landroid/app/Activity;)Lrx/b/b;

    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 197
    :cond_0
    return-void
.end method

.method private hasDeclinedPermissions(Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 177
    # getter for: Lcm/aptoide/accountmanager/FacebookLoginUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/accountmanager/FacebookLoginUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasDeclinedPermissions: check if we need the permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    move v1, v0

    .line 180
    goto :goto_0

    .line 168
    :sswitch_0
    const-string v6, "email"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v2

    goto :goto_1

    :sswitch_1
    const-string v6, "user_friends"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    goto :goto_1

    .line 171
    :pswitch_0
    invoke-direct {p0}, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;->askForMailAgain()V

    move v0, v3

    .line 172
    goto :goto_2

    .line 174
    :pswitch_1
    # getter for: Lcm/aptoide/accountmanager/FacebookLoginUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/accountmanager/FacebookLoginUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasDeclinedPermissions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 175
    goto :goto_2

    .line 181
    :cond_1
    return v1

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x5c24b9c -> :sswitch_0
        0x372ae121 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$askForMailAgain$0(Landroid/app/Activity;Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    if-ne p1, v0, :cond_0

    .line 192
    invoke-static {}, Lcom/facebook/login/f;->a()Lcom/facebook/login/f;

    move-result-object v0

    const-string v1, "email"

    .line 193
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/login/f;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    .line 145
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/accountmanager/R$string;->user_cancelled:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 154
    # getter for: Lcm/aptoide/accountmanager/FacebookLoginUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/accountmanager/FacebookLoginUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    .line 156
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/accountmanager/R$string;->error_occured:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/g;)V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;->hasDeclinedPermissions(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/facebook/login/g;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    new-instance v2, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$1;

    invoke-direct {v2, p0, v0}, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$1;-><init>(Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$c;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string v2, "fields"

    const-string v3, "id, email"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/i;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lcom/facebook/login/g;

    invoke-virtual {p0, p1}, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;->onSuccess(Lcom/facebook/login/g;)V

    return-void
.end method
