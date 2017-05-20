.class final synthetic Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

.field private final arg$2:J


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;->arg$2:J

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;J)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;J)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;->arg$2:J

    check-cast p1, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    invoke-virtual {v0, v2, v3, p1}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->lambda$cleanCache$3(JLcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
