.class public Lcom/b/b/y;
.super Lcom/b/b/ce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/y$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/b/b/z;",
            ">;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field final d:I

.field final e:Lcom/b/b/af;

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:J

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Z

.field public m:Lcom/b/b/ac;

.field private final u:I

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/b/b/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/y;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/b/b/af;Ljava/util/Map;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/b/b/af;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/b/b/ce;-><init>()V

    .line 24
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/b/b/y;->u:I

    .line 25
    const/16 v0, 0x7530

    iput v0, p0, Lcom/b/b/y;->v:I

    .line 46
    invoke-virtual {p0, p4}, Lcom/b/b/y;->a(Ljava/lang/String;)V

    .line 1042
    iput-wide p5, p0, Lcom/b/b/ce;->n:J

    .line 49
    invoke-virtual {p0}, Lcom/b/b/y;->a()V

    .line 51
    iput-object p1, p0, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/b/b/y;->b:J

    .line 1071
    iput p7, p0, Lcom/b/b/ce;->s:I

    .line 56
    iput p7, p0, Lcom/b/b/y;->c:I

    .line 57
    iput p8, p0, Lcom/b/b/y;->d:I

    .line 58
    iput-object p9, p0, Lcom/b/b/y;->e:Lcom/b/b/af;

    .line 59
    iput-object p10, p0, Lcom/b/b/y;->f:Ljava/util/Map;

    .line 60
    iput p11, p0, Lcom/b/b/y;->h:I

    .line 61
    iput p12, p0, Lcom/b/b/y;->i:I

    .line 62
    iput-object p13, p0, Lcom/b/b/y;->j:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/b/b/y;->g:J

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/b/y;->a:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/b/b/y;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/b/b/y;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/b/b/y;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/b/b/y;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/b/b/y;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/b/b/y;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/b/b/y;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/b/b/y;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/b/b/y;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/b/b/y;->c:I

    return v0
.end method

.method static synthetic d(Lcom/b/b/y;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/b/b/y;->d:I

    return v0
.end method

.method static synthetic e(Lcom/b/b/y;)Lcom/b/b/af;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/b/b/y;->e:Lcom/b/b/af;

    return-object v0
.end method

.method static synthetic f(Lcom/b/b/y;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/b/b/y;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/b/b/y;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/b/b/y;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/b/b/y;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/b/b/y;->h:I

    return v0
.end method

.method static synthetic i(Lcom/b/b/y;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/b/b/y;->i:I

    return v0
.end method

.method static synthetic j(Lcom/b/b/y;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/b/b/y;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/b/b/y;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/b/b/y;->l:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/b/b/ce;->a()V

    .line 2026
    iget v0, p0, Lcom/b/b/ce;->p:I

    .line 77
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/b/b/y;->g:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/b/y;->g:J

    .line 79
    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/y;->m:Lcom/b/b/ac;

    invoke-virtual {v0}, Lcom/b/b/ac;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/b/b/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/z;

    .line 141
    iput-object p0, v0, Lcom/b/b/z;->l:Lcom/b/b/y;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
