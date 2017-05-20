.class public final Lcm/aptoide/pt/database/accessors/AccessorFactory;
.super Ljava/lang/Object;
.source "AccessorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/ad;",
            "A::",
            "Lcm/aptoide/pt/database/accessors/Accessor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TA;"
        }
    .end annotation

    .prologue
    .line 24
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    .line 41
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto :goto_0

    .line 28
    :cond_1
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto :goto_0

    .line 30
    :cond_2
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    new-instance v0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto :goto_0

    .line 32
    :cond_3
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    new-instance v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto :goto_0

    .line 34
    :cond_4
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    new-instance v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto :goto_0

    .line 36
    :cond_5
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    new-instance v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/StoreAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto :goto_0

    .line 38
    :cond_6
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    new-instance v0, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto/16 :goto_0

    .line 40
    :cond_7
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    new-instance v0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    new-instance v1, Lcm/aptoide/pt/database/accessors/Database;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/Database;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    goto/16 :goto_0

    .line 44
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create accessor for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
