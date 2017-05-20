.class final Lio/realm/j$a;
.super Lio/realm/internal/b;
.source "FileToDownloadRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/j;
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


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    const-string v1, "FileToDownload"

    const-string v2, "md5"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->a:J

    .line 48
    const-string v1, "md5"

    iget-wide v2, p0, Lio/realm/j$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "FileToDownload"

    const-string v2, "downloadId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->b:J

    .line 51
    const-string v1, "downloadId"

    iget-wide v2, p0, Lio/realm/j$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "FileToDownload"

    const-string v2, "altLink"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->c:J

    .line 54
    const-string v1, "altLink"

    iget-wide v2, p0, Lio/realm/j$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "FileToDownload"

    const-string v2, "link"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->d:J

    .line 57
    const-string v1, "link"

    iget-wide v2, p0, Lio/realm/j$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "FileToDownload"

    const-string v2, "packageName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->e:J

    .line 60
    const-string v1, "packageName"

    iget-wide v2, p0, Lio/realm/j$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "FileToDownload"

    const-string v2, "path"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->f:J

    .line 63
    const-string v1, "path"

    iget-wide v2, p0, Lio/realm/j$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "FileToDownload"

    const-string v2, "fileType"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->g:J

    .line 66
    const-string v1, "fileType"

    iget-wide v2, p0, Lio/realm/j$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "FileToDownload"

    const-string v2, "progress"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->h:J

    .line 69
    const-string v1, "progress"

    iget-wide v2, p0, Lio/realm/j$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "FileToDownload"

    const-string v2, "status"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->i:J

    .line 72
    const-string v1, "status"

    iget-wide v2, p0, Lio/realm/j$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "FileToDownload"

    const-string v2, "fileName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->j:J

    .line 75
    const-string v1, "fileName"

    iget-wide v2, p0, Lio/realm/j$a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "FileToDownload"

    const-string v2, "versionCode"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->k:J

    .line 78
    const-string v1, "versionCode"

    iget-wide v2, p0, Lio/realm/j$a;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "FileToDownload"

    const-string v2, "versionName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/j$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/j$a;->l:J

    .line 81
    const-string v1, "versionName"

    iget-wide v2, p0, Lio/realm/j$a;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, v0}, Lio/realm/j$a;->a(Ljava/util/Map;)V

    .line 84
    return-void
.end method
