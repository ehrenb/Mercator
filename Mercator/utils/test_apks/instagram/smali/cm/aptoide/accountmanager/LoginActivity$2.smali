.class Lcm/aptoide/accountmanager/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/LoginActivity;->setupViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/accountmanager/LoginActivity;


# direct methods
.method constructor <init>(Lcm/aptoide/accountmanager/LoginActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcm/aptoide/accountmanager/LoginActivity$2;->this$0:Lcm/aptoide/accountmanager/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.aptoide.com/account/password-recovery"

    .line 159
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    iget-object v1, p0, Lcm/aptoide/accountmanager/LoginActivity$2;->this$0:Lcm/aptoide/accountmanager/LoginActivity;

    invoke-virtual {v1, v0}, Lcm/aptoide/accountmanager/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method
