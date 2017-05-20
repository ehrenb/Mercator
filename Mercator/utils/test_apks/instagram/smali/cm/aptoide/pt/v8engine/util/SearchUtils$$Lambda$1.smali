.class final synthetic Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcm/aptoide/pt/v8engine/util/CreateQueryFragmentInterface;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->lambda$setupGlobalSearchView$0(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
