.class final Lio/realm/am$a;
.super Lio/realm/internal/b;
.source "ScheduledRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    const-string v1, "Scheduled"

    const-string v2, "name"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->a:J

    .line 53
    const-string v1, "name"

    iget-wide v2, p0, Lio/realm/am$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "Scheduled"

    const-string v2, "versionName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->b:J

    .line 56
    const-string v1, "versionName"

    iget-wide v2, p0, Lio/realm/am$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "Scheduled"

    const-string v2, "icon"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->c:J

    .line 59
    const-string v1, "icon"

    iget-wide v2, p0, Lio/realm/am$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "Scheduled"

    const-string v2, "path"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->d:J

    .line 62
    const-string v1, "path"

    iget-wide v2, p0, Lio/realm/am$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "Scheduled"

    const-string v2, "md5"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->e:J

    .line 65
    const-string v1, "md5"

    iget-wide v2, p0, Lio/realm/am$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "Scheduled"

    const-string v2, "verCode"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->f:J

    .line 68
    const-string v1, "verCode"

    iget-wide v2, p0, Lio/realm/am$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "Scheduled"

    const-string v2, "packageName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->g:J

    .line 71
    const-string v1, "packageName"

    iget-wide v2, p0, Lio/realm/am$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "Scheduled"

    const-string v2, "storeName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->h:J

    .line 74
    const-string v1, "storeName"

    iget-wide v2, p0, Lio/realm/am$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "Scheduled"

    const-string v2, "alternativeApkPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->i:J

    .line 77
    const-string v1, "alternativeApkPath"

    iget-wide v2, p0, Lio/realm/am$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "Scheduled"

    const-string v2, "mainObbName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->j:J

    .line 80
    const-string v1, "mainObbName"

    iget-wide v2, p0, Lio/realm/am$a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "Scheduled"

    const-string v2, "mainObbPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->k:J

    .line 83
    const-string v1, "mainObbPath"

    iget-wide v2, p0, Lio/realm/am$a;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "Scheduled"

    const-string v2, "mainObbMd5"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->l:J

    .line 86
    const-string v1, "mainObbMd5"

    iget-wide v2, p0, Lio/realm/am$a;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "Scheduled"

    const-string v2, "patchObbName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->m:J

    .line 89
    const-string v1, "patchObbName"

    iget-wide v2, p0, Lio/realm/am$a;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "Scheduled"

    const-string v2, "patchObbPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->n:J

    .line 92
    const-string v1, "patchObbPath"

    iget-wide v2, p0, Lio/realm/am$a;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "Scheduled"

    const-string v2, "patchObbMd5"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->o:J

    .line 95
    const-string v1, "patchObbMd5"

    iget-wide v2, p0, Lio/realm/am$a;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "Scheduled"

    const-string v2, "isDownloading"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->p:J

    .line 98
    const-string v1, "isDownloading"

    iget-wide v2, p0, Lio/realm/am$a;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "Scheduled"

    const-string v2, "appAction"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/am$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/am$a;->q:J

    .line 101
    const-string v1, "appAction"

    iget-wide v2, p0, Lio/realm/am$a;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0, v0}, Lio/realm/am$a;->a(Ljava/util/Map;)V

    .line 104
    return-void
.end method
