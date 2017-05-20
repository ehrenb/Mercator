.class public final enum Lcm/aptoide/pt/model/v7/Event$Type;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/model/v7/Event$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/model/v7/Event$Type;

.field public static final enum API:Lcm/aptoide/pt/model/v7/Event$Type;

.field public static final enum CLIENT:Lcm/aptoide/pt/model/v7/Event$Type;

.field public static final enum v3:Lcm/aptoide/pt/model/v7/Event$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Type;

    const-string v1, "API"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Type;->API:Lcm/aptoide/pt/model/v7/Event$Type;

    .line 23
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Type;

    const-string v1, "CLIENT"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/model/v7/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Type;->CLIENT:Lcm/aptoide/pt/model/v7/Event$Type;

    .line 24
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Type;

    const-string v1, "v3"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/model/v7/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Type;->v3:Lcm/aptoide/pt/model/v7/Event$Type;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/model/v7/Event$Type;

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Type;->API:Lcm/aptoide/pt/model/v7/Event$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Type;->CLIENT:Lcm/aptoide/pt/model/v7/Event$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Type;->v3:Lcm/aptoide/pt/model/v7/Event$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Type;->$VALUES:[Lcm/aptoide/pt/model/v7/Event$Type;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event$Type;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcm/aptoide/pt/model/v7/Event$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Event$Type;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/model/v7/Event$Type;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcm/aptoide/pt/model/v7/Event$Type;->$VALUES:[Lcm/aptoide/pt/model/v7/Event$Type;

    invoke-virtual {v0}, [Lcm/aptoide/pt/model/v7/Event$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/Event$Type;

    return-object v0
.end method
