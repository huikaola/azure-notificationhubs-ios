//----------------------------------------------------------------
//  Copyright (c) Microsoft Corporation. All rights reserved.
//----------------------------------------------------------------

import SwiftUI

struct TagsList: View {
    var tags: [String]
    var onDelete: (IndexSet) -> Void
    
    var body: some View {
        List {
            ForEach(tags, id: \.self) {
                Row(title: $0);
            }
            .onDelete(perform: {
                self.onDelete($0)
            })
        }
    }
}

struct TagsList_Previews: PreviewProvider {
    static var previews: some View {
        TagsList(tags: ["tag1", "tag2"], onDelete: {_ in })
    }
}
