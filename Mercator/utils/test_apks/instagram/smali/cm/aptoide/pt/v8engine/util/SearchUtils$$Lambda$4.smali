.class final synthetic Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$4;->arg$1:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$4;->arg$1:Ljava/lang/String;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->lambda$setupInsideStoreSearchView$3(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
