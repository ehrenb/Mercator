.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$11;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$11;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$11;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$11;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->lambda$setupToolbarDetails$10(Landroid/view/View;)V

    return-void
.end method
