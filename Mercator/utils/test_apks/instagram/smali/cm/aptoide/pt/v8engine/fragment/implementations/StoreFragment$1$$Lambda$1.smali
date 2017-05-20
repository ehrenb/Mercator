.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Landroid/support/v4/app/y;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1$$Lambda$1;->arg$1:Landroid/support/v4/app/y;

    return-void
.end method

.method public static lambdaFactory$(Landroid/support/v4/app/y;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1$$Lambda$1;-><init>(Landroid/support/v4/app/y;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1$$Lambda$1;->arg$1:Landroid/support/v4/app/y;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->lambda$onPageSelected$0(Landroid/support/v4/app/y;Landroid/view/View;)V

    return-void
.end method
