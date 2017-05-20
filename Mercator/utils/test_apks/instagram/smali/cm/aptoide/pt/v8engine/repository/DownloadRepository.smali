.class public Lcm/aptoide/pt/v8engine/repository/DownloadRepository;
.super Ljava/lang/Object;
.source "DownloadRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/Repository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/repository/Repository",
        "<",
        "Lcm/aptoide/pt/database/realm/Download;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;->accessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;->accessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;->accessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->getAll()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;->accessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Lcm/aptoide/pt/database/realm/Download;)V

    .line 18
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;->save(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method
