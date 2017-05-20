.class final synthetic Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/PermissionsBaseActivity;

.field private final arg$2:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/PermissionsBaseActivity;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;->arg$1:Lcm/aptoide/accountmanager/PermissionsBaseActivity;

    iput-object p2, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;->arg$2:Landroid/app/Dialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/PermissionsBaseActivity;Landroid/app/Dialog;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;-><init>(Lcm/aptoide/accountmanager/PermissionsBaseActivity;Landroid/app/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;->arg$1:Lcm/aptoide/accountmanager/PermissionsBaseActivity;

    iget-object v1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;->arg$2:Landroid/app/Dialog;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->lambda$chooseAvatarSource$0(Landroid/app/Dialog;Ljava/lang/Void;)V

    return-void
.end method
