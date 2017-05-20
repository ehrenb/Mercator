.class public final Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;
.super Ljava/lang/Object;
.source "OldActionsMap.java"


# static fields
.field private static final actionMap:Landroid/support/v4/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/database/realm/Rollback$Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Landroid/support/v4/f/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/support/v4/f/a;-><init>(I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    .line 17
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Installing"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Uninstalling"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Updating"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Downgrading"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Installed"

    sget-object v2, Lcm/aptoide/pt/database/realm/Rollback$Action;->INSTALL:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Uninstalled"

    sget-object v2, Lcm/aptoide/pt/database/realm/Rollback$Action;->UNINSTALL:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Updated"

    sget-object v2, Lcm/aptoide/pt/database/realm/Rollback$Action;->UPDATE:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    const-string v1, "Downgraded"

    sget-object v2, Lcm/aptoide/pt/database/realm/Rollback$Action;->DOWNGRADE:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionFor(Ljava/lang/String;)Lcm/aptoide/pt/database/realm/Rollback$Action;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->actionMap:Landroid/support/v4/f/a;

    invoke-virtual {v0, p0}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback$Action;

    return-object v0
.end method
