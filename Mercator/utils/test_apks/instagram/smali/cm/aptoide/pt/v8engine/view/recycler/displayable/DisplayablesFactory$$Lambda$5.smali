.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;->instance:Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;->instance:Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcm/aptoide/pt/model/v7/store/Store;

    check-cast p2, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->lambda$null$0(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/store/Store;)I

    move-result v0

    return v0
.end method
