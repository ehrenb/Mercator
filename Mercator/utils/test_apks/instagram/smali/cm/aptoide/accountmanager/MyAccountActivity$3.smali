.class Lcm/aptoide/accountmanager/MyAccountActivity$3;
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
    .line 44
    iput-object p1, p0, Lcm/aptoide/accountmanager/MyAccountActivity$3;->this$0:Lcm/aptoide/accountmanager/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity$3;->this$0:Lcm/aptoide/accountmanager/MyAccountActivity;

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->invalidateAccessToken(Landroid/content/Context;)Lrx/d;

    move-result-object v0

    new-instance v1, Lcm/aptoide/accountmanager/MyAccountActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcm/aptoide/accountmanager/MyAccountActivity$3$1;-><init>(Lcm/aptoide/accountmanager/MyAccountActivity$3;Landroid/view/View;)V

    .line 47
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/j;)Lrx/k;

    .line 52
    return-void
.end method
