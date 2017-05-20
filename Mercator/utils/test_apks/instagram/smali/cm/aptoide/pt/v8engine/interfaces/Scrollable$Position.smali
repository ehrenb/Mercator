.class public final enum Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;
.super Ljava/lang/Enum;
.source "Scrollable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/interfaces/Scrollable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

.field public static final enum FIRST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

.field public static final enum LAST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->FIRST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    const-string v1, "LAST"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->LAST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    sget-object v1, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->FIRST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->LAST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->$VALUES:[Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->$VALUES:[Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    return-object v0
.end method
