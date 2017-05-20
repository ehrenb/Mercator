.class synthetic Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions$1;
.super Ljava/lang/Object;
.source "SearchTabOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cm$aptoide$pt$v8engine$analytics$abtesting$SearchTabOptions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->values()[Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions$1;->$SwitchMap$cm$aptoide$pt$v8engine$analytics$abtesting$SearchTabOptions:[I

    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions$1;->$SwitchMap$cm$aptoide$pt$v8engine$analytics$abtesting$SearchTabOptions:[I

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->ALL_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions$1;->$SwitchMap$cm$aptoide$pt$v8engine$analytics$abtesting$SearchTabOptions:[I

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->FOLLOWED_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
