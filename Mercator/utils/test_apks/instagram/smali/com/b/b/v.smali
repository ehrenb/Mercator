.class public Lcom/b/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cx$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Runnable;

.field private final c:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/au;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/av;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/ay;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/b/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/by",
            "<",
            "Lcom/b/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/b/b/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/by",
            "<",
            "Lcom/b/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/b/b/bn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bn",
            "<",
            "Lcom/b/b/t;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/b/b/bn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bn",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/b/b/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/b/b/u;

.field private final k:Lcom/b/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bl",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/b/ac;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:Z

.field private t:Lcom/b/b/i;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/b/b/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x4

    const/4 v6, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/b/b/v$1;

    invoke-direct {v0, p0}, Lcom/b/b/v$1;-><init>(Lcom/b/b/v;)V

    iput-object v0, p0, Lcom/b/b/v;->b:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lcom/b/b/v$6;

    invoke-direct {v0, p0}, Lcom/b/b/v$6;-><init>(Lcom/b/b/v;)V

    iput-object v0, p0, Lcom/b/b/v;->c:Lcom/b/b/bp;

    .line 115
    new-instance v0, Lcom/b/b/v$7;

    invoke-direct {v0, p0}, Lcom/b/b/v$7;-><init>(Lcom/b/b/v;)V

    iput-object v0, p0, Lcom/b/b/v;->d:Lcom/b/b/bp;

    .line 122
    new-instance v0, Lcom/b/b/v$8;

    invoke-direct {v0, p0}, Lcom/b/b/v$8;-><init>(Lcom/b/b/v;)V

    iput-object v0, p0, Lcom/b/b/v;->e:Lcom/b/b/bp;

    .line 131
    new-instance v0, Lcom/b/b/by;

    const-string v1, "proton config request"

    new-instance v2, Lcom/b/b/ah;

    invoke-direct {v2}, Lcom/b/b/ah;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/b/b/by;-><init>(Ljava/lang/String;Lcom/b/b/co;)V

    iput-object v0, p0, Lcom/b/b/v;->f:Lcom/b/b/by;

    .line 132
    new-instance v0, Lcom/b/b/by;

    const-string v1, "proton config response"

    new-instance v2, Lcom/b/b/ai;

    invoke-direct {v2}, Lcom/b/b/ai;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/b/b/by;-><init>(Ljava/lang/String;Lcom/b/b/co;)V

    iput-object v0, p0, Lcom/b/b/v;->g:Lcom/b/b/by;

    .line 137
    new-instance v0, Lcom/b/b/u;

    invoke-direct {v0}, Lcom/b/b/u;-><init>()V

    iput-object v0, p0, Lcom/b/b/v;->j:Lcom/b/b/u;

    .line 138
    new-instance v0, Lcom/b/b/bl;

    invoke-direct {v0}, Lcom/b/b/bl;-><init>()V

    iput-object v0, p0, Lcom/b/b/v;->k:Lcom/b/b/bl;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/b/v;->l:Ljava/util/List;

    .line 145
    iput-boolean v6, p0, Lcom/b/b/v;->o:Z

    .line 148
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/b/b/v;->q:J

    .line 157
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v1

    .line 159
    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/v;->m:Z

    .line 160
    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 161
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, protonEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/b/b/v;->m:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/b/b/v;->n:Ljava/lang/String;

    .line 164
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 165
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, protonConfigUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/b/v;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/v;->o:Z

    .line 168
    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 169
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, AnalyticsEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/b/b/v;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/b/b/v;->c:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 172
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v2, p0, Lcom/b/b/v;->d:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 173
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/b/b/v;->e:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 175
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 176
    new-instance v1, Lcom/b/b/bn;

    .line 1952
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".yflurryprotonconfig."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v3

    .line 2101
    iget-object v3, v3, Lcom/b/b/bg;->d:Ljava/lang/String;

    .line 1952
    invoke-static {v3}, Lcom/b/b/df;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".yflurryprotonconfig."

    new-instance v4, Lcom/b/b/v$9;

    invoke-direct {v4, p0}, Lcom/b/b/v$9;-><init>(Lcom/b/b/v;)V

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/b/b/bn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/b/b/cq;)V

    iput-object v1, p0, Lcom/b/b/v;->h:Lcom/b/b/bn;

    .line 185
    new-instance v1, Lcom/b/b/bn;

    .line 2956
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".yflurryprotonreport."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v3

    .line 3101
    iget-object v3, v3, Lcom/b/b/bg;->d:Ljava/lang/String;

    .line 2956
    invoke-static {v3}, Lcom/b/b/df;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, ".yflurryprotonreport."

    new-instance v3, Lcom/b/b/v$10;

    invoke-direct {v3, p0}, Lcom/b/b/v$10;-><init>(Lcom/b/b/v;)V

    invoke-direct {v1, v0, v2, v6, v3}, Lcom/b/b/bn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/b/b/cq;)V

    iput-object v1, p0, Lcom/b/b/v;->i:Lcom/b/b/bn;

    .line 199
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/v$11;

    invoke-direct {v1, p0}, Lcom/b/b/v$11;-><init>(Lcom/b/b/v;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 207
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/v$2;

    invoke-direct {v1, p0}, Lcom/b/b/v$2;-><init>(Lcom/b/b/v;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/b/b/v;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/b/b/v;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/b/b/v;Lcom/b/b/i;)Lcom/b/b/i;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    return-object p1
.end method

.method private declared-synchronized a(JZ[B)V
    .locals 3

    .prologue
    .line 900
    monitor-enter p0

    if-nez p4, :cond_0

    .line 912
    :goto_0
    monitor-exit p0

    return-void

    .line 904
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v2, "Saving proton config response"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 906
    new-instance v0, Lcom/b/b/t;

    invoke-direct {v0}, Lcom/b/b/t;-><init>()V

    .line 13035
    iput-wide p1, v0, Lcom/b/b/t;->a:J

    .line 13039
    iput-boolean p3, v0, Lcom/b/b/t;->b:Z

    .line 13043
    iput-object p4, v0, Lcom/b/b/t;->c:[B

    .line 911
    iget-object v1, p0, Lcom/b/b/v;->h:Lcom/b/b/bn;

    invoke-virtual {v1, v0}, Lcom/b/b/bn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/b/b/v;->f()V

    return-void
.end method

.method static synthetic a(Lcom/b/b/v;JZ[B)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/b/v;->a(JZ[B)V

    return-void
.end method

.method static synthetic a(Lcom/b/b/v;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/b/b/i;)Z
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/b/b/v;->b(Lcom/b/b/i;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/b/b/v;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/b/b/v;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/b/b/v;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/b/b/v;->r:J

    return-wide p1
.end method

.method private declared-synchronized b(J)V
    .locals 5

    .prologue
    .line 849
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/v;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 851
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/ac;

    .line 11078
    iget-wide v2, v0, Lcom/b/b/ac;->a:J

    .line 853
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 854
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 857
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/b/b/v;->i()V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    monitor-enter p0

    const/4 v2, 0x3

    :try_start_0
    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event triggered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/b/b/v;->o:Z

    if-nez v2, :cond_1

    .line 698
    sget-object v2, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v3, "Analytics and pulse have been disabled."

    invoke-static {v2, v3}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 702
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/b/v;->t:Lcom/b/b/i;

    if-nez v2, :cond_2

    .line 703
    const/4 v2, 0x3

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "Config response is empty. No events to fire."

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 707
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 709
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/b/v;->k:Lcom/b/b/bl;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/b/b/bl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 716
    if-nez v3, :cond_3

    .line 717
    const/4 v2, 0x3

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "No events to fire. Returning."

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 722
    const/4 v2, 0x3

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "No events to fire. Returning."

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 728
    if-eqz p2, :cond_7

    const/4 v2, 0x1

    move/from16 v17, v2

    .line 732
    :goto_1
    const/4 v2, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 743
    sget-object v2, Lcom/b/b/ag;->d:Lcom/b/b/ag;

    move-object/from16 v16, v2

    .line 746
    :goto_3
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 750
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/b/l;

    .line 751
    const/4 v4, 0x0

    .line 753
    instance-of v3, v2, Lcom/b/b/m;

    if-eqz v3, :cond_d

    .line 754
    const/4 v3, 0x4

    sget-object v5, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v6, "Event contains triggers."

    invoke-static {v3, v5, v6}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 755
    move-object v0, v2

    check-cast v0, Lcom/b/b/m;

    move-object v3, v0

    iget-object v6, v3, Lcom/b/b/m;->d:[Ljava/lang/String;

    .line 758
    if-nez v6, :cond_8

    .line 759
    const/4 v3, 0x4

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "Template does not contain trigger values. Firing."

    invoke-static {v3, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v4, 0x1

    .line 770
    :cond_6
    :goto_5
    move-object v0, v2

    check-cast v0, Lcom/b/b/m;

    move-object v3, v0

    iget-object v3, v3, Lcom/b/b/m;->c:Ljava/lang/String;

    .line 771
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 774
    if-nez v3, :cond_a

    .line 775
    const/4 v2, 0x4

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "Publisher params has no value associated with proton key. Not firing."

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 728
    :cond_7
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_1

    .line 732
    :sswitch_0
    const-string v4, "flurry.session_start"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const-string v4, "flurry.session_end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "flurry.app_install"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    .line 734
    :pswitch_0
    sget-object v2, Lcom/b/b/ag;->b:Lcom/b/b/ag;

    move-object/from16 v16, v2

    .line 735
    goto :goto_3

    .line 737
    :pswitch_1
    sget-object v2, Lcom/b/b/ag;->c:Lcom/b/b/ag;

    move-object/from16 v16, v2

    .line 738
    goto :goto_3

    .line 740
    :pswitch_2
    sget-object v2, Lcom/b/b/ag;->a:Lcom/b/b/ag;

    move-object/from16 v16, v2

    .line 741
    goto/16 :goto_3

    .line 761
    :cond_8
    array-length v3, v6

    if-nez v3, :cond_9

    .line 762
    const/4 v3, 0x4

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "Template does not contain trigger values. Firing."

    invoke-static {v3, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v4, 0x1

    goto :goto_5

    .line 764
    :cond_9
    if-nez p2, :cond_6

    .line 765
    const/4 v2, 0x4

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "Publisher has not passed in params list. Not firing."

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 780
    :cond_a
    array-length v7, v6

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_12

    aget-object v8, v6, v5

    .line 781
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 782
    const/4 v3, 0x1

    .line 787
    :goto_7
    if-nez v3, :cond_c

    .line 788
    const/4 v2, 0x4

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "Publisher params list does not match proton param values. Not firing."

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 780
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 792
    :cond_c
    const/4 v3, 0x4

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "Publisher params match proton values. Firing."

    invoke-static {v3, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_d
    iget-object v0, v2, Lcom/b/b/l;->b:Lcom/b/b/f;

    move-object/from16 v22, v0

    .line 798
    if-nez v22, :cond_e

    .line 799
    const/4 v2, 0x3

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "Template is empty. Not firing current event."

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 803
    :cond_e
    const/4 v2, 0x3

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating callback report for partner: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/b/b/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 806
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 807
    const-string v3, "event_name"

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v3, "event_time_millis"

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/b/v;->j:Lcom/b/b/u;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/b/b/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/b/b/u;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 812
    const/4 v15, 0x0

    .line 813
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/b/b/f;->f:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/b/v;->j:Lcom/b/b/u;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/b/b/f;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/b/b/u;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 817
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    add-long v7, v2, v4

    .line 820
    new-instance v2, Lcom/b/b/y;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/b/b/f;->b:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/b/b/f;->a:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-object v9, v9, Lcom/b/b/i;->e:Lcom/b/b/g;

    iget v9, v9, Lcom/b/b/g;->b:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/b/b/f;->g:I

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/b/b/f;->d:Lcom/b/b/af;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/b/b/f;->j:Ljava/util/Map;

    move-object/from16 v0, v22

    iget v13, v0, Lcom/b/b/f;->i:I

    move-object/from16 v0, v22

    iget v14, v0, Lcom/b/b/f;->h:I

    invoke-direct/range {v2 .. v15}, Lcom/b/b/y;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/b/b/af;Ljava/util/Map;IILjava/lang/String;)V

    .line 824
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/b/b/f;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 828
    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    new-instance v3, Lcom/b/b/ac;

    .line 832
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v6

    .line 833
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->e()J

    move-result-wide v8

    move-object/from16 v4, p1

    move/from16 v5, v17

    move-object/from16 v10, v16

    move-object/from16 v11, v20

    invoke-direct/range {v3 .. v11}, Lcom/b/b/ac;-><init>(Ljava/lang/String;ZJJLcom/b/b/ag;Ljava/util/Map;)V

    .line 838
    const-string v2, "flurry.session_end"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 839
    const/4 v2, 0x3

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Storing Pulse callbacks for event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/b/v;->l:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 842
    :cond_11
    const/4 v2, 0x3

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Firing Pulse callbacks for event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/b/b/ab;->a(Lcom/b/b/ac;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_12
    move v3, v4

    goto/16 :goto_7

    .line 732
    nop

    :sswitch_data_0
    .sparse-switch
        0x26750b2e -> :sswitch_1
        0x51bea0f9 -> :sswitch_2
        0x5e26fdf5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/b/b/i;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x3

    const/4 v2, 0x0

    .line 566
    if-nez p0, :cond_0

    .line 579
    :goto_0
    return v2

    .line 572
    :cond_0
    iget-object v4, p0, Lcom/b/b/i;->e:Lcom/b/b/g;

    .line 9584
    if-eqz v4, :cond_7

    .line 9589
    iget-object v0, v4, Lcom/b/b/g;->a:Ljava/util/List;

    if-eqz v0, :cond_7

    move v1, v2

    .line 9593
    :goto_1
    iget-object v0, v4, Lcom/b/b/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 9594
    iget-object v0, v4, Lcom/b/b/g;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/f;

    .line 9595
    if-eqz v0, :cond_6

    .line 9596
    iget-object v5, v0, Lcom/b/b/f;->b:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-wide v6, v0, Lcom/b/b/f;->a:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/b/b/f;->e:Ljava/lang/String;

    const-string v6, ""

    .line 9597
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v0, v0, Lcom/b/b/f;->c:Ljava/util/List;

    .line 9609
    if-eqz v0, :cond_5

    .line 9614
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/l;

    .line 9615
    iget-object v6, v0, Lcom/b/b/l;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9616
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "An event is missing a name"

    invoke-static {v10, v0, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 9597
    :goto_2
    if-nez v0, :cond_6

    .line 9598
    :cond_2
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v1, "A callback template is missing required values"

    invoke-static {v10, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 572
    :goto_3
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/b/i;->e:Lcom/b/b/g;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/b/b/i;->e:Lcom/b/b/g;

    iget-object v0, v0, Lcom/b/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/b/b/i;->e:Lcom/b/b/g;

    iget-object v0, v0, Lcom/b/b/g;->e:Ljava/lang/String;

    const-string v1, ""

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 575
    :cond_3
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v1, "Config response is missing required values."

    invoke-static {v10, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9620
    :cond_4
    instance-of v6, v0, Lcom/b/b/m;

    if-eqz v6, :cond_1

    .line 9621
    check-cast v0, Lcom/b/b/m;

    iget-object v0, v0, Lcom/b/b/m;->c:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9622
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "An event trigger is missing a param name"

    invoke-static {v10, v0, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 9623
    goto :goto_2

    :cond_5
    move v0, v3

    .line 9628
    goto :goto_2

    .line 9593
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v3

    .line 9604
    goto :goto_3

    :cond_8
    move v2, v3

    .line 579
    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/b/b/v;->k()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/b/b/v;->l()V

    return-void
.end method

.method static synthetic e(Lcom/b/b/v;)Lcom/b/b/by;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/b/b/v;->g:Lcom/b/b/by;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/v;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 330
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 4097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 331
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 333
    if-eqz v1, :cond_0

    .line 334
    const-string v1, "flurry.app_install"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/b/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 336
    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v0, 0x1

    .line 342
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/b/b/v;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 349
    iget-boolean v1, p0, Lcom/b/b/v;->p:Z

    if-eqz v1, :cond_0

    .line 354
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/b/at;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 360
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/b/at;->c()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    .line 363
    :goto_1
    iget-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    if-eqz v0, :cond_2

    .line 365
    iget-boolean v0, p0, Lcom/b/b/v;->s:Z

    if-eq v0, v1, :cond_4

    .line 366
    const/4 v0, 0x3

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "Limit ad tracking value has changed, purging"

    invoke-static {v0, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    .line 393
    :cond_2
    :goto_2
    invoke-static {}, Lcom/b/b/be;->a()Lcom/b/b/be;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/b/be;->a(Ljava/lang/Object;)V

    .line 395
    const/4 v0, 0x3

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "Requesting proton config"

    invoke-static {v0, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/b/b/v;->g()[B

    move-result-object v4

    .line 400
    if-eqz v4, :cond_0

    .line 405
    new-instance v5, Lcom/b/b/ca;

    invoke-direct {v5}, Lcom/b/b/ca;-><init>()V

    .line 406
    iget-object v0, p0, Lcom/b/b/v;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "https://proton.flurry.com/sdk/v1/config"

    .line 4136
    :goto_3
    iput-object v0, v5, Lcom/b/b/cc;->f:Ljava/lang/String;

    .line 5027
    const/16 v0, 0x1388

    iput v0, v5, Lcom/b/b/di;->w:I

    .line 408
    sget-object v0, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    .line 5144
    iput-object v0, v5, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    .line 410
    const-string v0, "application/x-flurry;version=2"

    .line 411
    const-string v6, "application/x-flurry;version=2"

    .line 412
    invoke-static {v4}, Lcom/b/b/by;->a([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 414
    const-string v8, "Content-Type"

    invoke-virtual {v5, v8, v0}, Lcom/b/b/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "Accept"

    invoke-virtual {v5, v0, v6}, Lcom/b/b/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "FM-Checksum"

    invoke-virtual {v5, v0, v7}, Lcom/b/b/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lcom/b/b/ck;

    invoke-direct {v0}, Lcom/b/b/ck;-><init>()V

    .line 6041
    iput-object v0, v5, Lcom/b/b/ca;->c:Lcom/b/b/co;

    .line 418
    new-instance v0, Lcom/b/b/ck;

    invoke-direct {v0}, Lcom/b/b/ck;-><init>()V

    .line 6045
    iput-object v0, v5, Lcom/b/b/ca;->d:Lcom/b/b/co;

    .line 7037
    iput-object v4, v5, Lcom/b/b/ca;->b:Ljava/lang/Object;

    .line 421
    new-instance v0, Lcom/b/b/v$4;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/b/b/v$4;-><init>(Lcom/b/b/v;JZ)V

    .line 7049
    iput-object v0, v5, Lcom/b/b/ca;->a:Lcom/b/b/ca$a;

    .line 501
    invoke-static {}, Lcom/b/b/be;->a()Lcom/b/b/be;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Lcom/b/b/be;->a(Ljava/lang/Object;Lcom/b/b/di;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    .line 372
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/b/b/v;->r:J

    iget-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-wide v8, v0, Lcom/b/b/i;->b:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    .line 373
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v2, "Cached Proton config valid, no need to refresh"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Lcom/b/b/v;->u:Z

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/v;->u:Z

    .line 376
    const-string v0, "flurry.session_start"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 384
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/b/b/v;->r:J

    iget-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-wide v8, v0, Lcom/b/b/i;->c:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 385
    const/4 v0, 0x3

    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v5, "Cached Proton config expired, purging"

    invoke-static {v0, v4, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    .line 387
    iget-object v0, p0, Lcom/b/b/v;->k:Lcom/b/b/bl;

    invoke-virtual {v0}, Lcom/b/b/bl;->a()V

    goto/16 :goto_2

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/b/b/v;->n:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method static synthetic f(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/b/b/v;->h()V

    return-void
.end method

.method static synthetic g(Lcom/b/b/v;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/b/b/v;->u:Z

    return v0
.end method

.method private g()[B
    .locals 6

    .prologue
    .line 508
    :try_start_0
    new-instance v2, Lcom/b/b/h;

    invoke-direct {v2}, Lcom/b/b/h;-><init>()V

    .line 509
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 7101
    iget-object v0, v0, Lcom/b/b/bg;->d:Ljava/lang/String;

    .line 509
    iput-object v0, v2, Lcom/b/b/h;->a:Ljava/lang/String;

    .line 510
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 8097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 510
    invoke-static {v0}, Lcom/b/b/dc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/b/b/h;->b:Ljava/lang/String;

    .line 511
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 9097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 511
    invoke-static {v0}, Lcom/b/b/dc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/b/b/h;->c:Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/b/b/bh;->a()I

    move-result v0

    iput v0, v2, Lcom/b/b/h;->d:I

    .line 513
    const/4 v0, 0x3

    iput v0, v2, Lcom/b/b/h;->e:I

    .line 514
    invoke-static {}, Lcom/b/b/bc;->a()Lcom/b/b/bc;

    invoke-static {}, Lcom/b/b/bc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/b/b/h;->f:Ljava/lang/String;

    .line 515
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/at;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/b/b/h;->g:Z

    .line 517
    new-instance v0, Lcom/b/b/k;

    invoke-direct {v0}, Lcom/b/b/k;-><init>()V

    iput-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    .line 518
    iget-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    new-instance v1, Lcom/b/b/e;

    invoke-direct {v1}, Lcom/b/b/e;-><init>()V

    iput-object v1, v0, Lcom/b/b/k;->a:Lcom/b/b/e;

    .line 519
    iget-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    iget-object v0, v0, Lcom/b/b/k;->a:Lcom/b/b/e;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/b/e;->a:Ljava/lang/String;

    .line 520
    iget-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    iget-object v0, v0, Lcom/b/b/k;->a:Lcom/b/b/e;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/b/e;->b:Ljava/lang/String;

    .line 521
    iget-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    iget-object v0, v0, Lcom/b/b/k;->a:Lcom/b/b/e;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/b/e;->c:Ljava/lang/String;

    .line 522
    iget-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    iget-object v0, v0, Lcom/b/b/k;->a:Lcom/b/b/e;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/b/e;->d:Ljava/lang/String;

    .line 523
    iget-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    iget-object v0, v0, Lcom/b/b/k;->a:Lcom/b/b/e;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/b/e;->e:Ljava/lang/String;

    .line 524
    iget-object v0, v2, Lcom/b/b/h;->h:Lcom/b/b/k;

    iget-object v0, v0, Lcom/b/b/k;->a:Lcom/b/b/e;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/b/e;->f:Ljava/lang/String;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/b/b/h;->i:Ljava/util/List;

    .line 528
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    move-result-object v0

    .line 9128
    iget-object v0, v0, Lcom/b/b/at;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 530
    new-instance v4, Lcom/b/b/j;

    invoke-direct {v4}, Lcom/b/b/j;-><init>()V

    .line 531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/bb;

    iget v1, v1, Lcom/b/b/bb;->c:I

    iput v1, v4, Lcom/b/b/j;->a:I

    .line 532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/bb;

    iget-boolean v1, v1, Lcom/b/b/bb;->d:Z

    if-eqz v1, :cond_1

    .line 533
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v4, Lcom/b/b/j;->b:Ljava/lang/String;

    .line 538
    :goto_2
    iget-object v0, v2, Lcom/b/b/h;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    const/4 v1, 0x5

    sget-object v2, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proton config request failed with exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 536
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/b/b/df;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/b/b/j;->b:Ljava/lang/String;

    goto :goto_2

    .line 541
    :cond_2
    invoke-static {}, Lcom/b/b/ax;->a()Lcom/b/b/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/ax;->f()Landroid/location/Location;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_3

    .line 543
    invoke-static {}, Lcom/b/b/ax;->c()I

    move-result v1

    .line 544
    new-instance v3, Lcom/b/b/o;

    invoke-direct {v3}, Lcom/b/b/o;-><init>()V

    iput-object v3, v2, Lcom/b/b/h;->j:Lcom/b/b/o;

    .line 545
    iget-object v3, v2, Lcom/b/b/h;->j:Lcom/b/b/o;

    new-instance v4, Lcom/b/b/n;

    invoke-direct {v4}, Lcom/b/b/n;-><init>()V

    iput-object v4, v3, Lcom/b/b/o;->a:Lcom/b/b/n;

    .line 546
    iget-object v3, v2, Lcom/b/b/h;->j:Lcom/b/b/o;

    iget-object v3, v3, Lcom/b/b/o;->a:Lcom/b/b/n;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/b/b/df;->a(DI)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/b/b/n;->a:D

    .line 547
    iget-object v3, v2, Lcom/b/b/h;->j:Lcom/b/b/o;

    iget-object v3, v3, Lcom/b/b/o;->a:Lcom/b/b/n;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/b/b/df;->a(DI)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/b/b/n;->b:D

    .line 548
    iget-object v3, v2, Lcom/b/b/h;->j:Lcom/b/b/o;

    iget-object v3, v3, Lcom/b/b/o;->a:Lcom/b/b/n;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5, v1}, Lcom/b/b/df;->a(DI)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v3, Lcom/b/b/n;->c:F

    .line 551
    :cond_3
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 553
    new-instance v1, Lcom/b/b/r;

    invoke-direct {v1}, Lcom/b/b/r;-><init>()V

    iput-object v1, v2, Lcom/b/b/h;->k:Lcom/b/b/r;

    .line 554
    iget-object v1, v2, Lcom/b/b/h;->k:Lcom/b/b/r;

    iput-object v0, v1, Lcom/b/b/r;->a:Ljava/lang/String;

    .line 557
    :cond_4
    iget-object v0, p0, Lcom/b/b/v;->f:Lcom/b/b/by;

    invoke-virtual {v0, v2}, Lcom/b/b/by;->a(Ljava/lang/Object;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 634
    iget-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    if-nez v0, :cond_1

    .line 692
    :cond_0
    return-void

    .line 638
    :cond_1
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v1, "Processing config response"

    invoke-static {v4, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-object v0, v0, Lcom/b/b/i;->e:Lcom/b/b/g;

    iget v0, v0, Lcom/b/b/g;->c:I

    invoke-static {v0}, Lcom/b/b/ab;->a(I)V

    .line 642
    iget-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-object v0, v0, Lcom/b/b/i;->e:Lcom/b/b/g;

    iget v0, v0, Lcom/b/b/g;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/b/b/ab;->b(I)V

    .line 643
    invoke-static {}, Lcom/b/b/ad;->a()Lcom/b/b/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-object v1, v1, Lcom/b/b/i;->e:Lcom/b/b/g;

    iget-object v1, v1, Lcom/b/b/g;->e:Ljava/lang/String;

    .line 10297
    if-eqz v1, :cond_2

    const-string v2, ".do"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10298
    sget-object v2, Lcom/b/b/ad;->b:Ljava/lang/String;

    const-string v3, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v4, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 10301
    :cond_2
    iput-object v1, v0, Lcom/b/b/ad;->a:Ljava/lang/String;

    .line 646
    iget-boolean v0, p0, Lcom/b/b/v;->m:Z

    if-eqz v0, :cond_3

    .line 647
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    iget-object v2, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-object v2, v2, Lcom/b/b/i;->f:Lcom/b/b/s;

    iget-boolean v2, v2, Lcom/b/b/s;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/b/b/v;->k:Lcom/b/b/bl;

    invoke-virtual {v0}, Lcom/b/b/bl;->a()V

    .line 653
    iget-object v0, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    iget-object v0, v0, Lcom/b/b/i;->e:Lcom/b/b/g;

    .line 654
    if-eqz v0, :cond_0

    .line 658
    iget-object v0, v0, Lcom/b/b/g;->a:Ljava/util/List;

    .line 659
    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/f;

    .line 664
    if-eqz v0, :cond_4

    .line 668
    iget-object v1, v0, Lcom/b/b/f;->c:Ljava/util/List;

    .line 670
    if-eqz v1, :cond_4

    .line 674
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/l;

    .line 675
    if-eqz v1, :cond_5

    .line 680
    iget-object v4, v1, Lcom/b/b/l;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 685
    iput-object v0, v1, Lcom/b/b/l;->b:Lcom/b/b/f;

    .line 688
    iget-object v4, p0, Lcom/b/b/v;->k:Lcom/b/b/bl;

    iget-object v5, v1, Lcom/b/b/l;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/b/b/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/b/b/v;)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/v;->u:Z

    return v0
.end method

.method private declared-synchronized i()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 860
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/v;->h:Lcom/b/b/bn;

    invoke-virtual {v0}, Lcom/b/b/bn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    if-eqz v0, :cond_1

    .line 864
    :try_start_1
    iget-object v1, p0, Lcom/b/b/v;->g:Lcom/b/b/by;

    .line 12031
    iget-object v3, v0, Lcom/b/b/t;->c:[B

    .line 864
    invoke-virtual {v1, v3}, Lcom/b/b/by;->b([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/b/b/v;->b(Lcom/b/b/i;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 874
    :cond_0
    if-eqz v1, :cond_1

    .line 875
    const/4 v2, 0x4

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v4, "Loaded saved proton config response"

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 877
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/b/b/v;->q:J

    .line 13023
    iget-wide v2, v0, Lcom/b/b/t;->a:J

    .line 879
    iput-wide v2, p0, Lcom/b/b/v;->r:J

    .line 13027
    iget-boolean v0, v0, Lcom/b/b/t;->b:Z

    .line 880
    iput-boolean v0, p0, Lcom/b/b/v;->s:Z

    .line 881
    iput-object v1, p0, Lcom/b/b/v;->t:Lcom/b/b/i;

    .line 884
    invoke-direct {p0}, Lcom/b/b/v;->h()V

    .line 888
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/v;->p:Z

    .line 891
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/v$5;

    invoke-direct {v1, p0}, Lcom/b/b/v$5;-><init>(Lcom/b/b/v;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    monitor-exit p0

    return-void

    .line 865
    :catch_0
    move-exception v1

    .line 866
    const/4 v3, 0x5

    :try_start_3
    sget-object v4, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to decode saved proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/b/b/v;->h:Lcom/b/b/bn;

    invoke-virtual {v1}, Lcom/b/b/bn;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/b/b/v;->e()V

    return-void
.end method

.method static synthetic j(Lcom/b/b/v;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/b/b/v;->q:J

    return-wide v0
.end method

.method private declared-synchronized j()V
    .locals 6

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/v;->o:Z

    if-nez v0, :cond_0

    .line 916
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v1, "Analytics disabled, not sending pulse reports."

    invoke-static {v0, v1}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    :goto_0
    monitor-exit p0

    return-void

    .line 920
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/b/v;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " queued reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/b/b/v;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/ac;

    .line 923
    const/4 v2, 0x3

    sget-object v3, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing Pulse callbacks for event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13083
    iget-object v5, v0, Lcom/b/b/ac;->c:Ljava/lang/String;

    .line 923
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/b/b/ab;->a(Lcom/b/b/ac;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 927
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/b/b/v;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic k(Lcom/b/b/v;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/b/b/v;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method private declared-synchronized k()V
    .locals 3

    .prologue
    .line 931
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v2, "Loading queued report data."

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/b/b/v;->i:Lcom/b/b/bn;

    invoke-virtual {v0}, Lcom/b/b/bn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 935
    if-eqz v0, :cond_0

    .line 936
    iget-object v1, p0, Lcom/b/b/v;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :cond_0
    monitor-exit p0

    return-void

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 3

    .prologue
    .line 941
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v2, "Saving queued report data."

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/b/b/v;->i:Lcom/b/b/bn;

    iget-object v1, p0, Lcom/b/b/v;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/b/b/bn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    monitor-exit p0

    return-void

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 947
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/v;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 948
    iget-object v0, p0, Lcom/b/b/v;->i:Lcom/b/b/bn;

    invoke-virtual {v0}, Lcom/b/b/bn;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    monitor-exit p0

    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/v;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 257
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/b/b/x;->a:J

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/b/v;->u:Z

    .line 262
    invoke-direct {p0}, Lcom/b/b/v;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/v;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/b/b/v;->b(J)V

    .line 290
    const-string v0, "flurry.session_end"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/v$3;

    invoke-direct {v1, p0}, Lcom/b/b/v$3;-><init>(Lcom/b/b/v;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 229
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 243
    const/4 v0, 0x6

    sget-object v1, Lcom/b/b/v;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_1
    return-void

    .line 229
    :sswitch_0
    const-string v1, "ProtonEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ProtonConfigUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "analyticsEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 231
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/v;->m:Z

    .line 232
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, protonEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/b/b/v;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/b/b/v;->n:Ljava/lang/String;

    .line 236
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, protonConfigUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/v;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/v;->o:Z

    .line 240
    sget-object v0, Lcom/b/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/b/b/v;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :sswitch_data_0
    .sparse-switch
        -0x66855b25 -> :sswitch_2
        0x2633fcbb -> :sswitch_0
        0x5edae5c7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/v;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/b/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/v;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 274
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/b/b/v;->b(J)V

    .line 275
    invoke-direct {p0}, Lcom/b/b/v;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/v;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 310
    invoke-direct {p0}, Lcom/b/b/v;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
