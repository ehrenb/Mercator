.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/k;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-class v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lio/realm/internal/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;I",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)TE;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 592
    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {p1, v2, p2, p3}, Lio/realm/c;->a(Lcm/aptoide/pt/database/realm/Download;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    .line 619
    :goto_0
    return-object v0

    .line 594
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    check-cast p1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {p1, v2, p2, p3}, Lio/realm/m;->a(Lcm/aptoide/pt/database/realm/Installed;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 596
    :cond_1
    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    check-cast p1, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {p1, v2, p2, p3}, Lio/realm/ap;->a(Lcm/aptoide/pt/database/realm/Store;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 598
    :cond_2
    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 599
    check-cast p1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {p1, v2, p2, p3}, Lio/realm/am;->a(Lcm/aptoide/pt/database/realm/Scheduled;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 600
    :cond_3
    const-class v1, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 601
    check-cast p1, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-static {p1, v2, p2, p3}, Lio/realm/y;->a(Lcm/aptoide/pt/database/realm/RealmInteger;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/RealmInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 602
    :cond_4
    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 603
    check-cast p1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {p1, v2, p2, p3}, Lio/realm/ak;->a(Lcm/aptoide/pt/database/realm/Rollback;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 604
    :cond_5
    const-class v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 605
    check-cast p1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-static {p1, v2, p2, p3}, Lio/realm/MinimalAdRealmProxy;->a(Lcm/aptoide/pt/database/realm/MinimalAd;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 606
    :cond_6
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 607
    check-cast p1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-static {p1, v2, p2, p3}, Lio/realm/p;->a(Lcm/aptoide/pt/database/realm/PaymentAuthorization;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 608
    :cond_7
    const-class v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 609
    check-cast p1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-static {p1, v2, p2, p3}, Lio/realm/j;->a(Lcm/aptoide/pt/database/realm/FileToDownload;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 610
    :cond_8
    const-class v1, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 611
    check-cast p1, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-static {p1, v2, p2, p3}, Lio/realm/ai;->a(Lcm/aptoide/pt/database/realm/RealmString;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/RealmString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 612
    :cond_9
    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 613
    check-cast p1, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {p1, v2, p2, p3}, Lio/realm/at;->a(Lcm/aptoide/pt/database/realm/Update;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Update;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 614
    :cond_a
    const-class v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 615
    check-cast p1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-static {p1, v2, p2, p3}, Lio/realm/g;->a(Lcm/aptoide/pt/database/realm/ExcludedAd;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 616
    :cond_b
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 617
    check-cast p1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-static {p1, v2, p2, p3}, Lio/realm/r;->a(Lcm/aptoide/pt/database/realm/PaymentConfirmation;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 618
    :cond_c
    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 619
    check-cast p1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-static {p1, v2, p2, p3}, Lio/realm/ar;->a(Lcm/aptoide/pt/database/realm/StoredMinimalAd;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 621
    :cond_d
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Lio/realm/u;Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/u;",
            "TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 239
    instance-of v0, p2, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 241
    :goto_0
    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    check-cast p2, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {p1, p2, p3, p4}, Lio/realm/c;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    .line 268
    :goto_1
    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_1
    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    check-cast p2, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {p1, p2, p3, p4}, Lio/realm/m;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_1

    .line 245
    :cond_2
    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    check-cast p2, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {p1, p2, p3, p4}, Lio/realm/ap;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Store;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_1

    .line 247
    :cond_3
    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    check-cast p2, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {p1, p2, p3, p4}, Lio/realm/am;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_1

    .line 249
    :cond_4
    const-class v1, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    check-cast p2, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-static {p1, p2, p3, p4}, Lio/realm/y;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/RealmInteger;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/RealmInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_1

    .line 251
    :cond_5
    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 252
    check-cast p2, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {p1, p2, p3, p4}, Lio/realm/ak;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_1

    .line 253
    :cond_6
    const-class v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    check-cast p2, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-static {p1, p2, p3, p4}, Lio/realm/MinimalAdRealmProxy;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/MinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 255
    :cond_7
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 256
    check-cast p2, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-static {p1, p2, p3, p4}, Lio/realm/p;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 257
    :cond_8
    const-class v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 258
    check-cast p2, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-static {p1, p2, p3, p4}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 259
    :cond_9
    const-class v1, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 260
    check-cast p2, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-static {p1, p2, p3, p4}, Lio/realm/ai;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/RealmString;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/RealmString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 261
    :cond_a
    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 262
    check-cast p2, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {p1, p2, p3, p4}, Lio/realm/at;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Update;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 263
    :cond_b
    const-class v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 264
    check-cast p2, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-static {p1, p2, p3, p4}, Lio/realm/g;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 265
    :cond_c
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 266
    check-cast p2, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-static {p1, p2, p3, p4}, Lio/realm/r;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 267
    :cond_d
    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 268
    check-cast p2, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-static {p1, p2, p3, p4}, Lio/realm/ar;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_1

    .line 270
    :cond_e
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/b;)Lio/realm/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lio/realm/internal/b;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 197
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lio/realm/c;

    invoke-direct {v0, p2}, Lio/realm/c;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    .line 224
    :goto_0
    return-object v0

    .line 199
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    new-instance v0, Lio/realm/m;

    invoke-direct {v0, p2}, Lio/realm/m;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 201
    :cond_1
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    new-instance v0, Lio/realm/ap;

    invoke-direct {v0, p2}, Lio/realm/ap;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 203
    :cond_2
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    new-instance v0, Lio/realm/am;

    invoke-direct {v0, p2}, Lio/realm/am;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 205
    :cond_3
    const-class v0, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    new-instance v0, Lio/realm/y;

    invoke-direct {v0, p2}, Lio/realm/y;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 207
    :cond_4
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    new-instance v0, Lio/realm/ak;

    invoke-direct {v0, p2}, Lio/realm/ak;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 209
    :cond_5
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    new-instance v0, Lio/realm/MinimalAdRealmProxy;

    invoke-direct {v0, p2}, Lio/realm/MinimalAdRealmProxy;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto :goto_0

    .line 211
    :cond_6
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    new-instance v0, Lio/realm/p;

    invoke-direct {v0, p2}, Lio/realm/p;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 213
    :cond_7
    const-class v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    new-instance v0, Lio/realm/j;

    invoke-direct {v0, p2}, Lio/realm/j;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 215
    :cond_8
    const-class v0, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    new-instance v0, Lio/realm/ai;

    invoke-direct {v0, p2}, Lio/realm/ai;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 217
    :cond_9
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    new-instance v0, Lio/realm/at;

    invoke-direct {v0, p2}, Lio/realm/at;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 219
    :cond_a
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    new-instance v0, Lio/realm/g;

    invoke-direct {v0, p2}, Lio/realm/g;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 221
    :cond_b
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 222
    new-instance v0, Lio/realm/r;

    invoke-direct {v0, p2}, Lio/realm/r;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 223
    :cond_c
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 224
    new-instance v0, Lio/realm/ar;

    invoke-direct {v0, p2}, Lio/realm/ar;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    goto/16 :goto_0

    .line 226
    :cond_d
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/e;",
            ")",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 49
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p2}, Lio/realm/c;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p2}, Lio/realm/m;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-static {p2}, Lio/realm/ap;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_2
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    invoke-static {p2}, Lio/realm/am;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_3
    const-class v0, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    invoke-static {p2}, Lio/realm/y;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_4
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    invoke-static {p2}, Lio/realm/ak;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_5
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-static {p2}, Lio/realm/MinimalAdRealmProxy;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_6
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    invoke-static {p2}, Lio/realm/p;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_7
    const-class v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    invoke-static {p2}, Lio/realm/j;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_8
    const-class v0, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    invoke-static {p2}, Lio/realm/ai;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_9
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 70
    invoke-static {p2}, Lio/realm/at;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :cond_a
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 72
    invoke-static {p2}, Lio/realm/g;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :cond_b
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 74
    invoke-static {p2}, Lio/realm/r;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_c
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    invoke-static {p2}, Lio/realm/ar;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    goto/16 :goto_0

    .line 78
    :cond_d
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 160
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lio/realm/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lio/realm/m;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_1
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-static {}, Lio/realm/ap;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_2
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-static {}, Lio/realm/am;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_3
    const-class v0, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-static {}, Lio/realm/y;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_4
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    invoke-static {}, Lio/realm/ak;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_5
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    invoke-static {}, Lio/realm/MinimalAdRealmProxy;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_6
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    invoke-static {}, Lio/realm/p;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_7
    const-class v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 177
    invoke-static {}, Lio/realm/j;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_8
    const-class v0, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    invoke-static {}, Lio/realm/ai;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_9
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 181
    invoke-static {}, Lio/realm/at;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 182
    :cond_a
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 183
    invoke-static {}, Lio/realm/g;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 184
    :cond_b
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 185
    invoke-static {}, Lio/realm/r;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :cond_c
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 187
    invoke-static {}, Lio/realm/ar;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 189
    :cond_d
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a(Lio/realm/u;Lio/realm/ac;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lio/realm/ac;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    instance-of v0, p2, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 398
    :goto_0
    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    check-cast p2, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {p1, p2, p3}, Lio/realm/c;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;Ljava/util/Map;)J

    .line 429
    :goto_1
    return-void

    .line 396
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_1
    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    check-cast p2, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {p1, p2, p3}, Lio/realm/m;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;Ljava/util/Map;)J

    goto :goto_1

    .line 402
    :cond_2
    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    check-cast p2, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {p1, p2, p3}, Lio/realm/ap;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Store;Ljava/util/Map;)J

    goto :goto_1

    .line 404
    :cond_3
    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    check-cast p2, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {p1, p2, p3}, Lio/realm/am;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;Ljava/util/Map;)J

    goto :goto_1

    .line 406
    :cond_4
    const-class v1, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 407
    check-cast p2, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-static {p1, p2, p3}, Lio/realm/y;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/RealmInteger;Ljava/util/Map;)J

    goto :goto_1

    .line 408
    :cond_5
    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 409
    check-cast p2, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {p1, p2, p3}, Lio/realm/ak;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;Ljava/util/Map;)J

    goto :goto_1

    .line 410
    :cond_6
    const-class v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 411
    check-cast p2, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-static {p1, p2, p3}, Lio/realm/MinimalAdRealmProxy;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/MinimalAd;Ljava/util/Map;)J

    goto :goto_1

    .line 412
    :cond_7
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 413
    check-cast p2, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-static {p1, p2, p3}, Lio/realm/p;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;Ljava/util/Map;)J

    goto :goto_1

    .line 414
    :cond_8
    const-class v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 415
    check-cast p2, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-static {p1, p2, p3}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;Ljava/util/Map;)J

    goto :goto_1

    .line 416
    :cond_9
    const-class v1, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 417
    check-cast p2, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-static {p1, p2, p3}, Lio/realm/ai;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/RealmString;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 418
    :cond_a
    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 419
    check-cast p2, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {p1, p2, p3}, Lio/realm/at;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 420
    :cond_b
    const-class v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 421
    check-cast p2, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-static {p1, p2, p3}, Lio/realm/g;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 422
    :cond_c
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 423
    check-cast p2, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-static {p1, p2, p3}, Lio/realm/r;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 424
    :cond_d
    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 425
    check-cast p2, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-static {p1, p2, p3}, Lio/realm/ar;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 427
    :cond_e
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Lio/realm/u;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Ljava/util/Collection",
            "<+",
            "Lio/realm/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 435
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 436
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    .line 441
    instance-of v1, v0, Lio/realm/internal/j;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 443
    :goto_0
    const-class v4, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {p1, v0, v3}, Lio/realm/c;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;Ljava/util/Map;)J

    .line 474
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 476
    invoke-static {p1, v2, v3}, Lio/realm/c;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    .line 508
    :cond_0
    :goto_2
    return-void

    .line 441
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 445
    :cond_2
    const-class v4, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {p1, v0, v3}, Lio/realm/m;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;Ljava/util/Map;)J

    goto :goto_1

    .line 447
    :cond_3
    const-class v4, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 448
    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {p1, v0, v3}, Lio/realm/ap;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Store;Ljava/util/Map;)J

    goto :goto_1

    .line 449
    :cond_4
    const-class v4, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 450
    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {p1, v0, v3}, Lio/realm/am;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;Ljava/util/Map;)J

    goto :goto_1

    .line 451
    :cond_5
    const-class v4, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 452
    check-cast v0, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-static {p1, v0, v3}, Lio/realm/y;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/RealmInteger;Ljava/util/Map;)J

    goto :goto_1

    .line 453
    :cond_6
    const-class v4, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 454
    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {p1, v0, v3}, Lio/realm/ak;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;Ljava/util/Map;)J

    goto :goto_1

    .line 455
    :cond_7
    const-class v4, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 456
    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-static {p1, v0, v3}, Lio/realm/MinimalAdRealmProxy;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/MinimalAd;Ljava/util/Map;)J

    goto :goto_1

    .line 457
    :cond_8
    const-class v4, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 458
    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-static {p1, v0, v3}, Lio/realm/p;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;Ljava/util/Map;)J

    goto :goto_1

    .line 459
    :cond_9
    const-class v4, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 460
    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-static {p1, v0, v3}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 461
    :cond_a
    const-class v4, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 462
    check-cast v0, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-static {p1, v0, v3}, Lio/realm/ai;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/RealmString;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 463
    :cond_b
    const-class v4, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 464
    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {p1, v0, v3}, Lio/realm/at;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 465
    :cond_c
    const-class v4, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 466
    check-cast v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-static {p1, v0, v3}, Lio/realm/g;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 467
    :cond_d
    const-class v4, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 468
    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-static {p1, v0, v3}, Lio/realm/r;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 469
    :cond_e
    const-class v4, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 470
    check-cast v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-static {p1, v0, v3}, Lio/realm/ar;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 472
    :cond_f
    invoke-static {v1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0

    .line 477
    :cond_10
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 478
    invoke-static {p1, v2, v3}, Lio/realm/m;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 479
    :cond_11
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 480
    invoke-static {p1, v2, v3}, Lio/realm/ap;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 481
    :cond_12
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 482
    invoke-static {p1, v2, v3}, Lio/realm/am;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 483
    :cond_13
    const-class v0, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 484
    invoke-static {p1, v2, v3}, Lio/realm/y;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 485
    :cond_14
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 486
    invoke-static {p1, v2, v3}, Lio/realm/ak;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 487
    :cond_15
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 488
    invoke-static {p1, v2, v3}, Lio/realm/MinimalAdRealmProxy;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 489
    :cond_16
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 490
    invoke-static {p1, v2, v3}, Lio/realm/p;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 491
    :cond_17
    const-class v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 492
    invoke-static {p1, v2, v3}, Lio/realm/j;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 493
    :cond_18
    const-class v0, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 494
    invoke-static {p1, v2, v3}, Lio/realm/ai;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 495
    :cond_19
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 496
    invoke-static {p1, v2, v3}, Lio/realm/at;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 497
    :cond_1a
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 498
    invoke-static {p1, v2, v3}, Lio/realm/g;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 499
    :cond_1b
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 500
    invoke-static {p1, v2, v3}, Lio/realm/r;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 501
    :cond_1c
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 502
    invoke-static {p1, v2, v3}, Lio/realm/ar;->a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 504
    :cond_1d
    invoke-static {v1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public b(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/e;",
            ")",
            "Lio/realm/internal/b;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 86
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p2}, Lio/realm/c;->b(Lio/realm/internal/e;)Lio/realm/c$a;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {p2}, Lio/realm/m;->b(Lio/realm/internal/e;)Lio/realm/m$a;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {p2}, Lio/realm/ap;->b(Lio/realm/internal/e;)Lio/realm/ap$a;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {p2}, Lio/realm/am;->b(Lio/realm/internal/e;)Lio/realm/am$a;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_3
    const-class v0, Lcm/aptoide/pt/database/realm/RealmInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    invoke-static {p2}, Lio/realm/y;->b(Lio/realm/internal/e;)Lio/realm/y$a;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_4
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    invoke-static {p2}, Lio/realm/ak;->b(Lio/realm/internal/e;)Lio/realm/ak$a;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_5
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    invoke-static {p2}, Lio/realm/MinimalAdRealmProxy;->b(Lio/realm/internal/e;)Lio/realm/MinimalAdRealmProxy$a;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_6
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    invoke-static {p2}, Lio/realm/p;->b(Lio/realm/internal/e;)Lio/realm/p$a;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_7
    const-class v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    invoke-static {p2}, Lio/realm/j;->b(Lio/realm/internal/e;)Lio/realm/j$a;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_8
    const-class v0, Lcm/aptoide/pt/database/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    invoke-static {p2}, Lio/realm/ai;->b(Lio/realm/internal/e;)Lio/realm/ai$a;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_9
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 107
    invoke-static {p2}, Lio/realm/at;->b(Lio/realm/internal/e;)Lio/realm/at$a;

    move-result-object v0

    goto/16 :goto_0

    .line 108
    :cond_a
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    invoke-static {p2}, Lio/realm/g;->b(Lio/realm/internal/e;)Lio/realm/g$a;

    move-result-object v0

    goto/16 :goto_0

    .line 110
    :cond_b
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 111
    invoke-static {p2}, Lio/realm/r;->b(Lio/realm/internal/e;)Lio/realm/r$a;

    move-result-object v0

    goto/16 :goto_0

    .line 112
    :cond_c
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 113
    invoke-static {p2}, Lio/realm/ar;->b(Lio/realm/internal/e;)Lio/realm/ar$a;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :cond_d
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
