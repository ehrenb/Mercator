.class final synthetic Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;

    check-cast p1, Lcom/seatgeek/sixpack/b;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->lambda$convert$5(Lcom/seatgeek/sixpack/b;)V

    return-void
.end method
