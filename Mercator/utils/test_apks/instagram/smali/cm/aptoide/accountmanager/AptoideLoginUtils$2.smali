.class final Lcm/aptoide/accountmanager/AptoideLoginUtils$2;
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


# instance fields
.field final synthetic val$activityWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideLoginUtils$2;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 50
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcm/aptoide/accountmanager/SignUpActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideLoginUtils$2;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    # getter for: Lcm/aptoide/accountmanager/AptoideLoginUtils;->REQ_SIGNUP:I
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideLoginUtils;->access$000()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    :cond_0
    return-void
.end method
