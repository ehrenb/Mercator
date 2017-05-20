.class final synthetic Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$29;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$29;->arg$1:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/ProgressDialog;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$29;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$29;-><init>(Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$29;->arg$1:Landroid/app/ProgressDialog;

    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->lambda$null$50(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V

    return-void
.end method
