.class final Lio/realm/ak$a;
.super Lio/realm/internal/b;
.source "RollbackRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ak;
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

.field public final r:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    const-string v1, "Rollback"

    const-string v2, "timestamp"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->a:J

    .line 54
    const-string v1, "timestamp"

    iget-wide v2, p0, Lio/realm/ak$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "Rollback"

    const-string v2, "action"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->b:J

    .line 57
    const-string v1, "action"

    iget-wide v2, p0, Lio/realm/ak$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "Rollback"

    const-string v2, "packageName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->c:J

    .line 60
    const-string v1, "packageName"

    iget-wide v2, p0, Lio/realm/ak$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "Rollback"

    const-string v2, "confirmed"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->d:J

    .line 63
    const-string v1, "confirmed"

    iget-wide v2, p0, Lio/realm/ak$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "Rollback"

    const-string v2, "icon"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->e:J

    .line 66
    const-string v1, "icon"

    iget-wide v2, p0, Lio/realm/ak$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "Rollback"

    const-string v2, "md5"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->f:J

    .line 69
    const-string v1, "md5"

    iget-wide v2, p0, Lio/realm/ak$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "Rollback"

    const-string v2, "appName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->g:J

    .line 72
    const-string v1, "appName"

    iget-wide v2, p0, Lio/realm/ak$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "Rollback"

    const-string v2, "versionCode"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->h:J

    .line 75
    const-string v1, "versionCode"

    iget-wide v2, p0, Lio/realm/ak$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "Rollback"

    const-string v2, "versionName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->i:J

    .line 78
    const-string v1, "versionName"

    iget-wide v2, p0, Lio/realm/ak$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "Rollback"

    const-string v2, "appId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->j:J

    .line 81
    const-string v1, "appId"

    iget-wide v2, p0, Lio/realm/ak$a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "Rollback"

    const-string v2, "alternativeApkPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->k:J

    .line 84
    const-string v1, "alternativeApkPath"

    iget-wide v2, p0, Lio/realm/ak$a;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "Rollback"

    const-string v2, "apkPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->l:J

    .line 87
    const-string v1, "apkPath"

    iget-wide v2, p0, Lio/realm/ak$a;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "Rollback"

    const-string v2, "mainObbName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->m:J

    .line 90
    const-string v1, "mainObbName"

    iget-wide v2, p0, Lio/realm/ak$a;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "Rollback"

    const-string v2, "patchObbMd5"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->n:J

    .line 93
    const-string v1, "patchObbMd5"

    iget-wide v2, p0, Lio/realm/ak$a;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "Rollback"

    const-string v2, "patchObbPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->o:J

    .line 96
    const-string v1, "patchObbPath"

    iget-wide v2, p0, Lio/realm/ak$a;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "Rollback"

    const-string v2, "patchObbName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->p:J

    .line 99
    const-string v1, "patchObbName"

    iget-wide v2, p0, Lio/realm/ak$a;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "Rollback"

    const-string v2, "mainObbMd5"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->q:J

    .line 102
    const-string v1, "mainObbMd5"

    iget-wide v2, p0, Lio/realm/ak$a;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "Rollback"

    const-string v2, "mainObbPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ak$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ak$a;->r:J

    .line 105
    const-string v1, "mainObbPath"

    iget-wide v2, p0, Lio/realm/ak$a;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, v0}, Lio/realm/ak$a;->a(Ljava/util/Map;)V

    .line 108
    return-void
.end method
