.class public final enum Lcm/aptoide/pt/model/v7/Layout;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/model/v7/Layout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/model/v7/Layout;

.field public static final enum BRICK:Lcm/aptoide/pt/model/v7/Layout;

.field public static final enum GRAPHIC:Lcm/aptoide/pt/model/v7/Layout;

.field public static final enum GRID:Lcm/aptoide/pt/model/v7/Layout;

.field public static final enum LIST:Lcm/aptoide/pt/model/v7/Layout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcm/aptoide/pt/model/v7/Layout;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Layout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Layout;->GRID:Lcm/aptoide/pt/model/v7/Layout;

    .line 13
    new-instance v0, Lcm/aptoide/pt/model/v7/Layout;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/model/v7/Layout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Layout;->LIST:Lcm/aptoide/pt/model/v7/Layout;

    .line 14
    new-instance v0, Lcm/aptoide/pt/model/v7/Layout;

    const-string v1, "BRICK"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/model/v7/Layout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Layout;->BRICK:Lcm/aptoide/pt/model/v7/Layout;

    .line 15
    new-instance v0, Lcm/aptoide/pt/model/v7/Layout;

    const-string v1, "GRAPHIC"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/model/v7/Layout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Layout;->GRAPHIC:Lcm/aptoide/pt/model/v7/Layout;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcm/aptoide/pt/model/v7/Layout;

    sget-object v1, Lcm/aptoide/pt/model/v7/Layout;->GRID:Lcm/aptoide/pt/model/v7/Layout;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/model/v7/Layout;->LIST:Lcm/aptoide/pt/model/v7/Layout;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/model/v7/Layout;->BRICK:Lcm/aptoide/pt/model/v7/Layout;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/model/v7/Layout;->GRAPHIC:Lcm/aptoide/pt/model/v7/Layout;

    aput-object v1, v0, v5

    sput-object v0, Lcm/aptoide/pt/model/v7/Layout;->$VALUES:[Lcm/aptoide/pt/model/v7/Layout;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Layout;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcm/aptoide/pt/model/v7/Layout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Layout;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/model/v7/Layout;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcm/aptoide/pt/model/v7/Layout;->$VALUES:[Lcm/aptoide/pt/model/v7/Layout;

    invoke-virtual {v0}, [Lcm/aptoide/pt/model/v7/Layout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/Layout;

    return-object v0
.end method
