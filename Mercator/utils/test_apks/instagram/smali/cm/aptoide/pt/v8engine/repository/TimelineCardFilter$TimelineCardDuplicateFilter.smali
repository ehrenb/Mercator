.class public Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;
.super Ljava/lang/Object;
.source "TimelineCardFilter.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimelineCardDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/e",
        "<",
        "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final cardIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;->cardIds:Ljava/util/Set;

    .line 71
    return-void
.end method


# virtual methods
.method public call(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;->cardIds:Ljava/util/Set;

    invoke-interface {p1}, Lcm/aptoide/pt/model/v7/timeline/TimelineCard;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;->call(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;->cardIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 75
    return-void
.end method
