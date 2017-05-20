.class final synthetic Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$3;->arg$1:Landroid/app/Dialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Dialog;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$3;-><init>(Landroid/app/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$3;->arg$1:Landroid/app/Dialog;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->lambda$chooseAvatarSource$2(Landroid/app/Dialog;Ljava/lang/Void;)V

    return-void
.end method
