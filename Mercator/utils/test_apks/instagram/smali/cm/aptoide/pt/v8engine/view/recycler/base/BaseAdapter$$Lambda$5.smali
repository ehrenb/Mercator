.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

.field private final arg$2:I

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    iput p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;->arg$2:I

    iput p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;II)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;II)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    iget v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;->arg$2:I

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$5;->arg$3:I

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->lambda$removeDisplayables$4(II)V

    return-void
.end method
