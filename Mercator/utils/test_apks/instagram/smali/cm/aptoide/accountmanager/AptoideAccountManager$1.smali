.class final Lcm/aptoide/accountmanager/AptoideAccountManager$1;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/AptoideAccountManager;->setupLogout(Landroid/support/v4/app/u;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->logout(Ljava/lang/ref/WeakReference;)V

    .line 235
    return-void
.end method
