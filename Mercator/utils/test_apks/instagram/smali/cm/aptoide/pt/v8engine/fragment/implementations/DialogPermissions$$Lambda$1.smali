.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->lambda$onCreateDialog$0(Landroid/view/View;)V

    return-void
.end method
