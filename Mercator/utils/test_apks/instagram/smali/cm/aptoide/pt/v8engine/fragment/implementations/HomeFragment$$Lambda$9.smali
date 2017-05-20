.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$4:Landroid/net/Uri;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->arg$4:Landroid/net/Uri;

    check-cast p1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->lambda$openSocialLink$8(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcm/aptoide/pt/database/realm/Installed;)V

    return-void
.end method
