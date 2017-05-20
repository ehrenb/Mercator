.class final Lcm/aptoide/accountmanager/AptoideLoginUtils$1;
.super Ljava/lang/Object;
.source "AptoideLoginUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/AptoideLoginUtils;->setupAptoideLogin(Landroid/app/Activity;Landroid/widget/Button;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getIntroducedUserName()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getIntroducedPassword()Ljava/lang/String;

    move-result-object v1

    .line 37
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 39
    :cond_0
    sget v0, Lcm/aptoide/accountmanager/R$string;->fields_cannot_empty:I

    invoke-static {p1, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v2, Lcm/aptoide/accountmanager/ws/LoginMode;->APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcm/aptoide/accountmanager/AptoideAccountManager;->loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
