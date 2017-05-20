.class public Lcm/aptoide/pt/v8engine/repository/RollbackRepository;
.super Ljava/lang/Object;
.source "RollbackRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/Repository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/repository/Repository",
        "<",
        "Lcm/aptoide/pt/database/realm/Rollback;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessor:Lcm/aptoide/pt/database/accessors/RollbackAccessor;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/RollbackAccessor;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->accessor:Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    .line 13
    return-void
.end method


# virtual methods
.method public confirmRollback(Lcm/aptoide/pt/database/realm/Rollback;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setConfirmed(Z)V

    .line 115
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->save(Lcm/aptoide/pt/database/realm/Rollback;)V

    .line 116
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->get(Ljava/lang/String;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->accessor:Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getNotConfirmedRollback(Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->accessor:Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->getNotConfirmedRollback(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/Rollback;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->accessor:Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->save(Lcm/aptoide/pt/database/realm/Rollback;)V

    .line 120
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->save(Lcm/aptoide/pt/database/realm/Rollback;)V

    return-void
.end method
