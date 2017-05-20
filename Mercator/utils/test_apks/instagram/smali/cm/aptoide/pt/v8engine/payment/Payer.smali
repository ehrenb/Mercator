.class public Lcm/aptoide/pt/v8engine/payment/Payer;
.super Ljava/lang/Object;
.source "Payer.java"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/Payer;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public login()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/Payer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->login(Landroid/content/Context;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
