.class final Lcm/aptoide/accountmanager/GoogleLoginUtils$1;
.super Ljava/lang/Object;
.source "GoogleLoginUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/GoogleLoginUtils;->setUpGoogle(Landroid/support/v4/app/u;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$googleApiClient:Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcm/aptoide/accountmanager/GoogleLoginUtils$1;->val$googleApiClient:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/gms/auth/api/a;->k:Lcom/google/android/gms/auth/api/signin/a;

    iget-object v1, p0, Lcm/aptoide/accountmanager/GoogleLoginUtils$1;->val$googleApiClient:Lcom/google/android/gms/common/api/c;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/a;->a(Lcom/google/android/gms/common/api/c;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "The context must be an instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
