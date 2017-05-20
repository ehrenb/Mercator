.class final synthetic Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private final arg$2:Lcm/aptoide/pt/model/v7/BaseV7Response;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;->arg$2:Lcm/aptoide/pt/model/v7/BaseV7Response;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/model/v7/BaseV7Response;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/model/v7/BaseV7Response;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;->arg$2:Lcm/aptoide/pt/model/v7/BaseV7Response;

    check-cast p1, Lcm/aptoide/pt/model/v7/BaseV7Response;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->lambda$null$6(Lcm/aptoide/pt/model/v7/BaseV7Response;Lcm/aptoide/pt/model/v7/BaseV7Response;)V

    return-void
.end method
