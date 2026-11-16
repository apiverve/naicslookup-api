declare module '@apiverve/naicslookup' {
  export interface naicslookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface naicslookupResponse {
    status: string;
    error: string | null;
    data: NAICSLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface NAICSLookupData {
      count:    number | null;
      results:  Result[];
      notFound: any[];
  }
  
  interface Result {
      code:            null | string;
      title:           null | string;
      level:           number | null;
      levelName:       null | string;
      trilateral:      boolean | null;
      description:     null | string;
      parent:          Parent;
      hierarchy:       Hierarchy[];
      children:        any[];
      sizeStandard:    SizeStandard;
      indexTerms:      (null | string)[];
      crossReferences: CrossReference[];
      naics2017:       Parent[];
  }
  
  interface CrossReference {
      text:  null | string;
      codes: (null | string)[];
  }
  
  interface Hierarchy {
      code:      null | string;
      title:     null | string;
      level:     number | null;
      levelName: null | string;
  }
  
  interface Parent {
      code:  null | string;
      title: null | string;
  }
  
  interface SizeStandard {
      revenueMillions: number | null;
      employees:       null;
      summary:         null | string;
      exceptions:      any[];
  }

  export default class naicslookupWrapper {
    constructor(options: naicslookupOptions);

    execute(callback: (error: any, data: naicslookupResponse | null) => void): Promise<naicslookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: naicslookupResponse | null) => void): Promise<naicslookupResponse>;
    execute(query?: Record<string, any>): Promise<naicslookupResponse>;
  }
}
