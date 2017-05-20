.class public Lcom/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bx;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/b/b/v;

.field public b:Lcom/b/b/an;

.field public c:Lcom/b/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/b/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/a;
    .locals 3

    .prologue
    .line 26
    const-class v1, Lcom/b/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    const-class v2, Lcom/b/b/a;

    invoke-virtual {v0, v2}, Lcom/b/b/bg;->a(Ljava/lang/Class;)Lcom/b/b/bx;

    move-result-object v0

    check-cast v0, Lcom/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/b/b/a;->b()Lcom/b/b/aq;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/b/b/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static b()Lcom/b/b/aq;
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/b/b/ct;->a()Lcom/b/b/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/ct;->b()Lcom/b/b/cr;

    move-result-object v0

    .line 1229
    if-nez v0, :cond_0

    .line 1230
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1233
    :cond_0
    const-class v1, Lcom/b/b/aq;

    invoke-virtual {v0, v1}, Lcom/b/b/cr;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/aq;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/b/b/aq;

    invoke-static {v0}, Lcom/b/b/cr;->a(Ljava/lang/Class;)V

    .line 41
    new-instance v0, Lcom/b/b/an;

    invoke-direct {v0}, Lcom/b/b/an;-><init>()V

    iput-object v0, p0, Lcom/b/b/a;->b:Lcom/b/b/an;

    .line 42
    new-instance v0, Lcom/b/b/v;

    invoke-direct {v0}, Lcom/b/b/v;-><init>()V

    iput-object v0, p0, Lcom/b/b/a;->a:Lcom/b/b/v;

    .line 43
    new-instance v0, Lcom/b/b/x;

    invoke-direct {v0}, Lcom/b/b/x;-><init>()V

    iput-object v0, p0, Lcom/b/b/a;->c:Lcom/b/b/x;

    .line 1054
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/b/b/df;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    sget-object v0, Lcom/b/b/a;->d:Ljava/lang/String;

    const-string v1, "Application must declare permission: android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/b/b/df;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    sget-object v0, Lcom/b/b/a;->d:Ljava/lang/String;

    const-string v1, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    return-void
.end method
