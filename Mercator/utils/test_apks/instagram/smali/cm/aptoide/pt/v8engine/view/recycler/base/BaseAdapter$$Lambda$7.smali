.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$7;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->lambda$clearDisplayables$6()V

    return-void
.end method
