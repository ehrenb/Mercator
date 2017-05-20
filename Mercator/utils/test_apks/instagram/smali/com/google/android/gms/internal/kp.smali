.class public Lcom/google/android/gms/internal/kp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kp$c;,
        Lcom/google/android/gms/internal/kp$b;,
        Lcom/google/android/gms/internal/kp$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/kp$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kp$a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/kg;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kp;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/kp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/kp$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/kp;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/kg;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/internal/kg;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/kp;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/kg;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/kg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/kg;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/kg;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/la;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/la",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/kp$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/kp$c;-><init>(Lcom/google/android/gms/internal/kp;Lcom/google/android/gms/internal/kp$1;)V

    new-instance v5, Lcom/google/android/gms/internal/kp$2;

    invoke-direct {v5, p0, p2, v4}, Lcom/google/android/gms/internal/kp$2;-><init>(Lcom/google/android/gms/internal/kp;Ljava/lang/String;Lcom/google/android/gms/internal/kp$c;)V

    new-instance v0, Lcom/google/android/gms/internal/kp$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/kp$3;-><init>(Lcom/google/android/gms/internal/kp;ILjava/lang/String;Lcom/google/android/gms/internal/lh$b;Lcom/google/android/gms/internal/lh$a;[BLjava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/kg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/jf;

    return-object v4
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/kp$a;)Lcom/google/android/gms/internal/la;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kp$a",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/la",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/kp$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/kp$c;-><init>(Lcom/google/android/gms/internal/kp;Lcom/google/android/gms/internal/kp$1;)V

    sget-object v1, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/kg;

    new-instance v2, Lcom/google/android/gms/internal/kp$b;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/kp$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/kp$a;Lcom/google/android/gms/internal/lh$b;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/jf;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/la;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/la",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/kp;->a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/la;

    move-result-object v0

    return-object v0
.end method
