.class public final Lb/a/a/j$b;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/j$b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lb/a/a/j$b;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lb/a/a/j$b$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lb/a/a/l;",
            "Lb/a/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lb/a/a/j$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lb/a/a/j$b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    return-void
.end method

.method public static a()Lb/a/a/j$b;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lb/a/a/j$b;->a:Lb/a/a/j$b;

    if-nez v0, :cond_1

    .line 112
    const-class v1, Lb/a/a/j$b;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lb/a/a/j$b;->a:Lb/a/a/j$b;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lb/a/a/j$b;

    invoke-direct {v0}, Lb/a/a/j$b;-><init>()V

    sput-object v0, Lb/a/a/j$b;->a:Lb/a/a/j$b;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    sget-object v0, Lb/a/a/j$b;->a:Lb/a/a/j$b;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static a(Lb/a/a/l;)Lb/a/a/j;
    .locals 2

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    sget-object v0, Lb/a/a/j$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/j$b$a;

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0, p0}, Lb/a/a/j$b$a;->a(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    .line 102
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lb/a/a/j$a;

    invoke-direct {v0, p0}, Lb/a/a/j$a;-><init>(Lb/a/a/l;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public b(Lb/a/a/l;)Lb/a/a/j;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lb/a/a/j$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/j;

    .line 130
    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lb/a/a/j$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lb/a/a/j$b;->a(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lb/a/a/j$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/j;

    .line 134
    :cond_0
    return-object v0
.end method

.method public c(Lb/a/a/l;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lb/a/a/j$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method
