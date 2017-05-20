.class final Lcm/aptoide/accountmanager/AptoideAccountManager$3;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"

# interfaces
.implements Lrx/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/AptoideAccountManager;->getOnErrorAction(Landroid/content/Context;)Lrx/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 556
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager$3;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 558
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->removeLocalAccount()V

    .line 559
    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 560
    return-void
.end method
