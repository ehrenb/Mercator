.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/ws/responses/OAuth;

.field private final arg$2:Lcm/aptoide/accountmanager/ws/LoginMode;

.field private final arg$3:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/ws/responses/OAuth;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;->arg$1:Lcm/aptoide/accountmanager/ws/responses/OAuth;

    iput-object p2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;->arg$2:Lcm/aptoide/accountmanager/ws/LoginMode;

    iput-object p3, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;->arg$3:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/ws/responses/OAuth;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;-><init>(Lcm/aptoide/accountmanager/ws/responses/OAuth;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;->arg$1:Lcm/aptoide/accountmanager/ws/responses/OAuth;

    iget-object v1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;->arg$2:Lcm/aptoide/accountmanager/ws/LoginMode;

    iget-object v2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;->arg$3:Landroid/app/ProgressDialog;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$null$4(Lcm/aptoide/accountmanager/ws/responses/OAuth;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;Ljava/lang/Boolean;)V

    return-void
.end method
