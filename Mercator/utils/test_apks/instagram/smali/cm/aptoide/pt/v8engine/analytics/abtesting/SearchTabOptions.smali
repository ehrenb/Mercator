.class public final enum Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;
.super Ljava/lang/Enum;
.source "SearchTabOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

.field public static final enum ALL_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

.field public static final enum FOLLOWED_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    const-string v1, "FOLLOWED_STORES"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->FOLLOWED_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    const-string v1, "ALL_STORES"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->ALL_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->FOLLOWED_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->ALL_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->$VALUES:[Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->$VALUES:[Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    return-object v0
.end method


# virtual methods
.method public chooseTab()I
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions$1;->$SwitchMap$cm$aptoide$pt$v8engine$analytics$abtesting$SearchTabOptions:[I

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 13
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
