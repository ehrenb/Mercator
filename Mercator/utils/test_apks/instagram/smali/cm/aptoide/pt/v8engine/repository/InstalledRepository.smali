.class public Lcm/aptoide/pt/v8engine/repository/InstalledRepository;
.super Ljava/lang/Object;
.source "InstalledRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/Repository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/repository/Repository",
        "<",
        "Lcm/aptoide/pt/database/realm/Installed;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/InstalledAccessor;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 18
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->isInstalled(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->get(Ljava/lang/String;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->getAll()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAllSorted()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->getAllSorted()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAsList(Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->getAsList(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->remove(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public save(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->accessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->insert(Lcm/aptoide/pt/database/realm/Installed;)V

    .line 39
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->save(Lcm/aptoide/pt/database/realm/Installed;)V

    return-void
.end method
