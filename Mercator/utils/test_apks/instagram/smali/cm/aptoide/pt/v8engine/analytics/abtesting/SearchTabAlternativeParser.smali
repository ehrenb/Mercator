.class public Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabAlternativeParser;
.super Ljava/lang/Object;
.source "SearchTabAlternativeParser.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser",
        "<",
        "Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_STORES:Ljava/lang/String; = "all_stores"

.field public static final FOLLOWED_STORES:Ljava/lang/String; = "followed_stores"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;
    .locals 2

    .prologue
    .line 14
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 19
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->FOLLOWED_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    :goto_1
    return-object v0

    .line 14
    :sswitch_0
    const-string v1, "all_stores"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "followed_stores"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->ALL_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    goto :goto_1

    .line 14
    nop

    :sswitch_data_0
    .sparse-switch
        0x3755cec1 -> :sswitch_1
        0x5bf5c010 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabAlternativeParser;->parse(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    move-result-object v0

    return-object v0
.end method
