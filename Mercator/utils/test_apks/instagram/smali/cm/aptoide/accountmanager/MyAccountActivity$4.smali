.class Lcm/aptoide/accountmanager/MyAccountActivity$4;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/MyAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/accountmanager/MyAccountActivity;


# direct methods
.method constructor <init>(Lcm/aptoide/accountmanager/MyAccountActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcm/aptoide/accountmanager/MyAccountActivity$4;->this$0:Lcm/aptoide/accountmanager/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    const-string v0, "aptoide_account_manager_refresh_token_key"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 59
    return-void
.end method
