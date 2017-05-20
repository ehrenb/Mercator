.class public final Lcom/b/b/cw;
.super Lcom/b/b/cx;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Landroid/location/Location;

.field public static final l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Boolean;

.field public static final n:Ljava/lang/Long;

.field public static final o:Ljava/lang/Byte;

.field public static final p:Ljava/lang/Boolean;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/Boolean;

.field private static s:Lcom/b/b/cw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    const/16 v0, 0xe5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->a:Ljava/lang/Integer;

    .line 58
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->b:Ljava/lang/Integer;

    .line 59
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->c:Ljava/lang/Integer;

    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->d:Ljava/lang/Integer;

    .line 63
    sput-object v2, Lcom/b/b/cw;->e:Ljava/lang/String;

    .line 64
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->f:Ljava/lang/Boolean;

    .line 65
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->g:Ljava/lang/Boolean;

    .line 66
    sput-object v2, Lcom/b/b/cw;->h:Ljava/lang/String;

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->i:Ljava/lang/Boolean;

    .line 68
    sput-object v2, Lcom/b/b/cw;->j:Landroid/location/Criteria;

    .line 69
    sput-object v2, Lcom/b/b/cw;->k:Landroid/location/Location;

    .line 70
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->l:Ljava/lang/Long;

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->m:Ljava/lang/Boolean;

    .line 72
    sput-object v2, Lcom/b/b/cw;->n:Ljava/lang/Long;

    .line 73
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->o:Ljava/lang/Byte;

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->p:Ljava/lang/Boolean;

    .line 77
    sput-object v2, Lcom/b/b/cw;->q:Ljava/lang/String;

    .line 78
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/b/b/cw;->r:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/b/b/cx;-><init>()V

    .line 1085
    const-string v0, "AgentVersion"

    sget-object v1, Lcom/b/b/cw;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    const-string v0, "ReleaseMajorVersion"

    sget-object v1, Lcom/b/b/cw;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    const-string v0, "ReleaseMinorVersion"

    sget-object v1, Lcom/b/b/cw;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1088
    const-string v0, "ReleasePatchVersion"

    sget-object v1, Lcom/b/b/cw;->d:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1089
    const-string v0, "ReleaseBetaVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1091
    const-string v0, "VersionName"

    sget-object v1, Lcom/b/b/cw;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1093
    const-string v0, "CaptureUncaughtExceptions"

    sget-object v1, Lcom/b/b/cw;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    const-string v0, "UseHttps"

    sget-object v1, Lcom/b/b/cw;->g:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1096
    const-string v0, "ReportUrl"

    sget-object v1, Lcom/b/b/cw;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    const-string v0, "ReportLocation"

    sget-object v1, Lcom/b/b/cw;->i:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1099
    const-string v0, "ExplicitLocation"

    sget-object v1, Lcom/b/b/cw;->k:Landroid/location/Location;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1101
    const-string v0, "ContinueSessionMillis"

    sget-object v1, Lcom/b/b/cw;->l:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    const-string v0, "LogEvents"

    sget-object v1, Lcom/b/b/cw;->m:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    const-string v0, "Age"

    sget-object v1, Lcom/b/b/cw;->n:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    const-string v0, "Gender"

    sget-object v1, Lcom/b/b/cw;->o:Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1105
    const-string v0, "UserId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1107
    const-string v0, "ProtonEnabled"

    sget-object v1, Lcom/b/b/cw;->p:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    const-string v0, "ProtonConfigUrl"

    sget-object v1, Lcom/b/b/cw;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    const-string v0, "analyticsEnabled"

    sget-object v1, Lcom/b/b/cw;->r:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/cw;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/b/b/cw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/cw;->s:Lcom/b/b/cw;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/b/b/cw;

    invoke-direct {v0}, Lcom/b/b/cw;-><init>()V

    sput-object v0, Lcom/b/b/cw;->s:Lcom/b/b/cw;

    .line 22
    :cond_0
    sget-object v0, Lcom/b/b/cw;->s:Lcom/b/b/cw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
